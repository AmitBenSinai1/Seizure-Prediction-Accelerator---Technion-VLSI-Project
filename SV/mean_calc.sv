/*------------------------------------------------------------------------------
 * File          : mean_calc.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Mar 21, 2024
 * Description   : Module for calculating the mean value of EEG signals.
 *------------------------------------------------------------------------------*/
`timescale 1ns/1ps

module mean_calc #()(   
						input wire clk, // Clock signal
						input wire reset_n, // Active low reset signal
						input wire start, // Start signal from PC FSM
						input wire [17:0] eeg, // EEG signal input (18 bits, Q1.5.12 format)
						input wire start_div, // Start signal for the divider (after 256 signals)
						output wire complete_div, // Divider completion signal
						output wire [17:0] mean, // Calculated mean output (Q1.5.12 format)
						output wire [7:0] count // Total count of EEG inputs processed
						);

		// Internal signals
		logic [25:0] sum; // 26-bit accumulator for sum of inputs, Q1.13.12 format
		logic [7:0] total_count; // 8-bit counter for the total number of inputs               
		logic [22:0] quotient_full; // 23-bit quotient output from the divider
		logic [7:0] remainder_full; // 8-bit remainder output from the divider
		logic divide_by_0; // Flag to indicate division by zero
		logic start_div_d; // Delayed version of start_div signal
		
		logic [22:0] a; // Adjusted sum input for division, padded with zeros
		logic [4:0] quotient_full_integer; // Integer part of the quotient (5 bits)
		logic [11:0] quotient_full_frac; // Fractional part of the quotient (12 bits)
		
		// Register to hold the adjusted sum for division
		always_ff @(posedge clk or negedge reset_n) 
		begin
				if (!reset_n)
						a <= #1 23'b0; // Reset the value of 'a' to 0
				else if (start_div)
						a <= #1 {sum[24:7], 5'b0}; // Assign the upper 18 bits of 'sum' shifted left by 5 (Q13.5 format)
		end
		
		// Sequential divider instance with a 3-cycle latency
		DW_div_seq #(.a_width(23), .b_width(8), .num_cyc(3)) DW_div_seq_full( 
				.clk(clk), // Clock signal
				.rst_n(reset_n), // Active low reset
				.hold(1'b0), // Hold input (not used)
				.start(start_div_d), // Start signal for division
				.a(a), // Dividend (adjusted sum)
				.b(total_count - 8'b1), // Divisor (total count of inputs)
				.complete(complete_div), // Completion signal for division
				.quotient(quotient_full), // Quotient output
				.remainder(remainder_full), // Remainder output
				.divide_by_0(divide_by_0) // Division by zero flag
		);
			   
		// Register to delay the start_div signal
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 					start_div_d <= #1 1'b0; // Reset delayed start signal
			else 							start_div_d <= #1 start_div; // Assign start_div to start_div_d
		end
		
		// Accumulator for the sum of input signals
		always_ff @(posedge clk or negedge reset_n) begin
				if (!reset_n)           sum <= #1 26'b0; // Reset sum to 0 (Q1.13.12 format)
				else if (start)         sum <= #1 sum + eeg[16:0]; // Add current EEG signal to sum
		end
		
		// Counter for the total number of inputs
		always_ff @(posedge clk or negedge reset_n) begin
				if (!reset_n)           total_count <= #1 8'b0; // Reset counter to 0
				else if (start)         total_count <= #1 total_count + 1; // Increment counter on start
		end
  
		//// New change - 19.1
		assign count = total_count; // Assign total_count to output count
		
		// Extract integer and fractional parts of the quotient
		assign quotient_full_integer = quotient_full[14:10]; // Integer part (5 bits)
		assign quotient_full_frac = {quotient_full[9:0],2'b0}; // Fractional part (12 bits, padded with zeros)
		
		// Combine the sign bit, integer part, and fractional part to form the mean output
		assign mean = {sum[25],quotient_full_integer ,quotient_full_frac}; // Mean in Q1.5.12 format   

endmodule
