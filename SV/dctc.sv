/*------------------------------------------------------------------------------
 * File          : dctc.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Jun 12, 2025
 * Description   :
 *------------------------------------------------------------------------------*/
`timescale 1ns/1ps
`include "/users/epamof/Project/design/define.sv"

module dctc #() 
	(
		input wire clk,
		input wire reset_n,
		input wire start,
		input wire [17:0] sample_one_pos,
		input wire [17:0] sample_two_pos,
		input wire [17:0] sample_three_pos,
		input wire [17:0] sample_four_pos,
		input wire [17:0] sample_one_neg,
		input wire [17:0] sample_two_neg,
		input wire [17:0] sample_three_neg,
		input wire [17:0] sample_four_neg,
		
		output reg [7:0] fifo_addr, // output to FIFO
		output reg fifo_read, // output to FIFO
		input wire [17:0] fifo_sample,
		
		output reg dctc_finish,
		output reg seizure_prediction

	);

	logic start_d;
	logic [1:0] count;
	logic const_start;
	
	logic [19:0] sum; //Q8.12
	logic [19:0] mcmc_sum; //Q8.12
	
	logic [19:0] threshold = 20'b00001010000000000000; //Q8.12 = 10
	
	logic [19:0] distance; //Q8.12


	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 												distance <= #1 1'b0;
		else if ((fifo_addr == 8'd26) && (sum > mcmc_sum)) 			distance <= #1 sum - mcmc_sum;
		else if ((fifo_addr == 8'd26) && (sum < mcmc_sum)) 			distance <= #1 mcmc_sum - sum;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 												seizure_prediction <= #1 1'b0;
		else if ((fifo_addr == 8'd26) && (distance > threshold)) 	seizure_prediction <= #1 1'b1;
		else  														seizure_prediction <= #1 1'b0;
	end
	
	
	assign mcmc_sum = sample_one_pos[16:0] + sample_two_pos[16:0] + sample_three_pos[16:0] + sample_four_pos[16:0] +
					  sample_one_neg[16:0] + sample_two_neg[16:0] + sample_three_neg[16:0] + sample_four_neg[16:0];
	
	assign const_start = start || start_d;
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 																							sum <= #1 20'b0;
		else if ((const_start == 1'b1) && (count == 2'b00) && (fifo_addr >= 8'd18) && (fifo_addr < 8'd26)) 		sum <= #1 sum + fifo_sample[16:0];
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 							start_d <= #1 1'b0;
		else if (start == 1'b1) 				start_d <= #1 1'b1;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 															count <= #1 2'b00;
		else if ((const_start == 1'b1) && (count == 2'b00) && (!dctc_finish)) 	count <= #1 2'b01;
		else if ((const_start == 1'b1) && (count == 2'b01) && (!dctc_finish)) 	count <= #1 2'b10;
		else if ((const_start == 1'b1) && (count == 2'b10) && (!dctc_finish)) 	count <= #1 2'b11;
		else			 														count <= #1 2'b00;
	end
	
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)																						fifo_addr <= #1 8'd0;
		else if(start)																						fifo_addr <= #1 8'd18;
		else if ((const_start == 1'b1) && (fifo_addr < 8'd26) && (count == 2'b00) && (!dctc_finish))		fifo_addr <= #1 fifo_addr + 8'b00000001;	
	end
	

	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)																												fifo_read <= #1 1'b0;
		else if ((const_start == 1'b1) && (fifo_addr > 8'd17) && (fifo_addr < 8'd26) && (count == 2'b01) && (!dctc_finish))			fifo_read <= #1 1'b1;
		else																														fifo_read <= #1 1'b0;	
	end
	
	
	always_ff @(posedge clk or negedge reset_n) begin 
		if(!reset_n) 									dctc_finish <= #1 1'b0;
		else if (fifo_addr == 8'd26)					dctc_finish <= #1 1'b1;
	end
	

endmodule