/*------------------------------------------------------------------------------
 * File          : std_calc.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Mar 21, 2024
 * Description   : Module for calculating the standard deviation of EEG signals.
 *------------------------------------------------------------------------------*/
`timescale 1ns/1ps

module std_calc (
					input wire clk, // Clock signal
					input wire reset_n, // Active low reset signal
					input wire start, // Start signal
					input wire [17:0] eeg, // EEG signal input (Q1.5.12 format)
					input wire [17:0] mean, // Mean input (Q1.5.12 format)
					input wire [7:0] count, // Total count of EEG inputs
					input wire complete_acc, // Completion signal for the accumulation process
					output wire complete_sqrt, // Completion signal for the square root calculation
					output wire [18:0] std_dev // Standard deviation output (Q1.6.12 format)
);

	// Internal signals
	logic [17:0] eeg_d, mean_d; // Delayed EEG and mean signals
	logic [17:0] eeg_minus_mean; // Absolute difference between EEG and mean (Q6.12 format)
	logic [35:0] product; // Square of the difference (Q12.24 format)
	
	logic [23:0] square; // Truncated product (Q12.12 format)
	logic [11:0] square_integer; // Integer part of the square
	logic [11:0] square_frac; // Fractional part of the square
	
	assign square_integer = product[35:24]; // Extract integer part (12 bits)
	assign square_frac = product[23:12]; // Extract fractional part (12 bits)
	assign square = {square_integer, square_frac}; // Combine integer and fractional parts (Q12.12)
	
	logic [31:0] sum; // Accumulated sum of squares (Q20.12 format)
	logic [19:0] sum_int; // Integer part of the sum
	logic [11:0] sum_frac; // Fractional part of the sum
	
	assign sum_int = sum[31:12]; // Extract integer part
	assign sum_frac = sum[11:0]; // Extract fractional part
	
	logic [27:0] trunck_sum_zeros; // Truncated sum for division (Q20.8 format)
	logic [7:0] count_minus_one; // Count minus one for variance calculation
	assign count_minus_one = count - 1; // Decrement count
	
	logic [27:0] quotient; // Quotient output from the divider (Q20.4 format)
	logic [15:0] variance; // Variance (Q12.4 format)
	logic [11:0] variance_int; // Integer part of the variance
	logic [3:0] variance_frac; // Fractional part of the variance
	
	logic [19:0] variance_for_sqrt; // Adjusted variance for square root calculation

	assign variance_int = quotient[19:8]; // Extract integer part (12 bits)
	assign variance_frac = quotient[7:4]; // Extract fractional part (4 bits)
	assign variance = {variance_int, variance_frac}; // Combine parts to form variance (Q12.4)
	
	logic [7:0] remainder; // Remainder from division
	
	logic [9:0] root; // Square root output (Q6.4 format)
	logic [5:0] std_int; // Integer part of the standard deviation
	logic [3:0] std_frac; // Fractional part of the standard deviation
	
	assign std_int = root[9:4]; // Extract integer part (6 bits)
	assign std_frac = root[3:0]; // Extract fractional part (4 bits)
	assign std_dev = {1'b0, std_int, std_frac, 8'b0}; // Form standard deviation output (Q6.4)
	
	// Internal pipeline and control signals
	logic complete_div_pipe; // Delayed divider completion signal
	logic start_sqrt; // Start signal for square root calculation
	
	// FSM control signals
	logic start_mult; // Start signal for multiplier
	logic complete_mult; // Completion signal for multiplier
	logic complete_mult_pipe; // Delayed multiplier completion signal
	
	logic start_acc; // Start signal for accumulation process
	
	logic complete_div; // Completion signal for division
	logic divide_by_0; // Division by zero flag
	
	// FSM to control multiplier start
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n) 	start_mult <= #1 1'b0; // Reset multiplier start signal
		else			start_mult <= #1 start; // Start multiplier on start signal
	end

	// Multiplier for squaring the difference
	DW_mult_seq #(.a_width(18), .b_width(18), .num_cyc(3)) DW_mult_seq_full(
		.clk(clk),
		.rst_n(reset_n), 
		.hold(1'b0),
		.start(start_mult),
		.a(eeg_minus_mean),
		.b(eeg_minus_mean),
		.complete(complete_mult),
		.product(product)
	);

	// Divider for calculating variance
	DW_div_seq #(.a_width(28), .b_width(8), .num_cyc(3)) DW_div_seq_full( 
		.clk(clk),
		.rst_n(reset_n), 
		.hold(1'b0),
		.start(complete_acc),
		.a(trunck_sum_zeros),
		.b(count_minus_one),
		.complete(complete_div),
		.quotient(quotient),
		.remainder(remainder),
		.divide_by_0(divide_by_0)
	);
	
	// Square root calculation for standard deviation
	DW_sqrt_seq #(.width(20), .num_cyc(3)) DW_sqrt_seq_std( 
		.clk(clk),
		.rst_n(reset_n), 
		.hold(1'b0),
		.start(start_sqrt),
		.a(variance_for_sqrt),
		.complete(complete_sqrt),
		.root(root)
	);

	// Pipeline registers and control signals
	logic [24:0] square_pipe;

	// Subtractor for EEG and mean
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n) begin
			eeg_d <= #1 18'b0; // Reset delayed EEG signal
			mean_d <= #1 18'b0; // Reset delayed mean signal
			eeg_minus_mean <= #1 18'b0; // Reset difference
		end 
		else if (start) begin
			eeg_d <= #1 eeg; // Delay EEG signal
			mean_d <= #1 mean; // Delay mean signal
			if (eeg[16:0] > mean[16:0]) 
				eeg_minus_mean <= #1 eeg[16:0] - mean[16:0]; // Absolute difference
			else 
				eeg_minus_mean <= #1 mean[16:0] - eeg[16:0]; // Absolute difference
		end
	end
	
	// Pipeline register for square values
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n) 
			square_pipe <= #1 25'b0; // Reset pipeline register
		else if (start) 
			square_pipe <= #1 square; // Delay square value
		end
	
	// Control logic for accumulator start
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n) 		 start_acc <= #1 1'b0; // Reset accumulator start
		else				 start_acc <= #1 (!(complete_mult_pipe) && complete_mult); // Start accumulator after multiplication
	end	

	// Accumulator for sum of squares
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n) 
			sum <= #1 32'b0; // Reset sum
		else if (start_acc) 
			sum <= #1 sum + square; // Add square to sum
	end
	
	// Truncate sum and prepare for division
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)
			trunck_sum_zeros <= #1 28'b0; // Reset truncated sum
		else if (complete_acc)
			trunck_sum_zeros <= #1 {sum[31:8], 4'b0}; // Truncate and pad with zeros
	end
	
	// Delay pipeline for multiplier completion
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)
			complete_mult_pipe <= #1 1'b0; // Reset pipeline
		else
			complete_mult_pipe <= #1 complete_mult; // Delay completion signal
	end
	
	// Control logic for square root start
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n) 	start_sqrt <= #1 1'b0; // Reset square root start
		else 			start_sqrt <= #1 (!(complete_div_pipe) && complete_div); // Start square root after division
	end
	
	// Delay pipeline for division completion
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)
			complete_div_pipe <= #1 1'b0; // Reset pipeline
		else
			complete_div_pipe <= #1 complete_div; // Delay completion signal
	end
	
	// Prepare variance for square root calculation
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)
			variance_for_sqrt <= #1 20'b0; // Reset variance
		else if (complete_div)
			variance_for_sqrt <= #1 {variance, 4'b0}; // Pad variance with zeros for square root
	end
	
endmodule
