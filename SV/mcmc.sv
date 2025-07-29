/*------------------------------------------------------------------------------
 * File          : mcmc.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Apr 22, 2025
 * Description   :
 *------------------------------------------------------------------------------*/

`timescale 1ns/1ps
`include "/users/epamof/Project/design/define.sv"
module mcmc #() 
			(
				input wire clk, // APB clock
				input wire reset_n, // APB reset
				input wire start,
				input reg [71:0] mcmc_lut_data, //input from LUT 
				output reg [10:0] mcmc_lut_addr, // output to LUT
				output reg mcmc_lut_read, // output to LUT
				input wire [17:0] mean_pos, //Q1.5.12
				input wire [18:0] std_pos, //standart deviation, Q1.6.12 - we will use only 6.12 (18 bits)
				input wire [17:0] mean_neg,//Q1.5.12
				input wire [18:0] std_neg, //standart deviation, Q1.6.12 - we will use only 6.12 (18 bits)
				output wire [17:0] sample_one_pos,
				output wire [17:0] sample_two_pos,
				output wire [17:0] sample_three_pos,
				output wire [17:0] sample_four_pos,
				output wire [17:0] sample_one_neg,
				output wire [17:0] sample_two_neg,
				output wire [17:0] sample_three_neg,
				output wire [17:0] sample_four_neg,
				output wire mcmc_finish
			);

		logic [17:0] sample_one_pos_s;
		logic [17:0] sample_one_neg_s;
		logic [17:0] sample_two_pos_s;
		logic [17:0] sample_two_neg_s;
		logic [17:0] sample_three_pos_s;
		logic [17:0] sample_three_neg_s;
		logic [17:0] sample_four_pos_s;
		logic [17:0] sample_four_neg_s;
		
		logic mcmc_finish_s;


		wire[10:0] mcmc_lut_addr_pos;
		wire[10:0] mcmc_lut_addr_neg;
		
		logic [1:0] count;
		
		logic pos_read;

		logic const_start;
		
		logic [3:0] clk_count;
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 							clk_count <= #1 4'b0;
			else if (clk_count == 4'b1100) 			clk_count <= #1 4'b1100;
			else if (const_start == 1'b1) 			clk_count <= #1 clk_count + 4'b1;
		end
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 							mcmc_finish_s <= #1 1'b0;
			else if (clk_count == 4'b1100) 			mcmc_finish_s <= #1 1'b1;
		end

		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 							const_start <= #1 1'b0;
			else if (start == 1'b1) 				const_start <= #1 1'b1;
		end
		


		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																pos_read <= #1 1'b0;
			else if ((const_start == 1'b1) && (count == 2'b1) && (!mcmc_finish)) 		pos_read <= #1 !pos_read;
		end
		
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																sample_one_pos_s <= #1 18'b0;
			else if ((const_start == 1'b1) && (pos_read == 1'b1) && (!mcmc_finish)) 	sample_one_pos_s <= #1 {1'b0, mcmc_lut_data[67:51]};
		end
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																sample_two_pos_s <= #1 18'b0;
			else if ((const_start == 1'b1) && (pos_read == 1'b1) && (!mcmc_finish)) 	sample_two_pos_s <= #1 {1'b0, mcmc_lut_data[50:34]};
		end
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																sample_three_pos_s <= #1 18'b0;
			else if ((const_start == 1'b1) && (pos_read == 1'b1) && (!mcmc_finish)) 	sample_three_pos_s <= #1 {1'b0, mcmc_lut_data[33:17]};
		end  
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																sample_four_pos_s <= #1 18'b0;
			else if ((const_start == 1'b1) && (pos_read == 1'b1) && (!mcmc_finish)) 	sample_four_pos_s <= #1 {1'b0, mcmc_lut_data[16:0]};
		end
		
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																sample_one_neg_s <= #1 18'b0;
			else if ((const_start == 1'b1) && (pos_read == 1'b0) && (!mcmc_finish)) 	sample_one_neg_s <= #1 {1'b1, mcmc_lut_data[67:51]};
		end
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																sample_two_neg_s <= #1 18'b0;
			else if ((const_start == 1'b1) && (pos_read == 1'b0) && (!mcmc_finish)) 	sample_two_neg_s <= #1 {1'b1, mcmc_lut_data[50:34]};
		end
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																sample_three_neg_s <= #1 18'b0;
			else if ((const_start == 1'b1) && (pos_read == 1'b0) && (!mcmc_finish)) 	sample_three_neg_s <= #1 {1'b1, mcmc_lut_data[33:17]};
		end  
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																sample_four_neg_s <= #1 18'b0;
			else if ((const_start == 1'b1) && (pos_read == 1'b0) && (!mcmc_finish)) 	sample_four_neg_s <= #1 {1'b1, mcmc_lut_data[16:0]};
		end
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 									count <= #1 2'b00;
			else if ((count == 2'b00) && (!mcmc_finish)) 	count <= #1 2'b01;
			else if ((count == 2'b01) && (!mcmc_finish)) 	count <= #1 2'b10;
			else			 								count <= #1 2'b00;
		end
		
		assign mcmc_lut_addr_pos = {mean_pos[16:12], std_pos[17:12]};
		assign mcmc_lut_addr_neg = {mean_neg[16:12], std_neg[17:12]};
		
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 														mcmc_lut_addr <= #1 11'b0;
			else if((mcmc_lut_addr == mcmc_lut_addr_pos) && (!mcmc_finish))		mcmc_lut_addr <= #1 mcmc_lut_addr_neg;
			else 																mcmc_lut_addr <= #1 mcmc_lut_addr_pos;
		end
		
		
		always_ff @(posedge clk or negedge reset_n) begin
			if(!reset_n) 																			mcmc_lut_read <= #1 1'b0;
			else if(const_start == 1'b1 && (count == 2'b10 || count == 2'b00) && (!mcmc_finish))	mcmc_lut_read <= #1 1'b1;
			else 																					mcmc_lut_read <= #1 1'b0;
		end
		
		
		assign sample_one_pos = (clk_count == 4'b1010) ? sample_one_pos_s : sample_one_pos;
		assign sample_two_pos = (clk_count == 4'b1010) ? sample_two_pos_s : sample_two_pos;
		assign sample_three_pos = (clk_count == 4'b1010) ? sample_three_pos_s : sample_three_pos;
		assign sample_four_pos = (clk_count == 4'b1010) ? sample_four_pos_s : sample_four_pos;
		
		assign sample_one_neg = (clk_count == 4'b1100) ? sample_one_neg_s : sample_one_neg;
		assign sample_two_neg = (clk_count == 4'b1100) ? sample_two_neg_s : sample_two_neg;
		assign sample_three_neg = (clk_count == 4'b1100) ? sample_three_neg_s : sample_three_neg;
		assign sample_four_neg = (clk_count == 4'b1100) ? sample_four_neg_s : sample_four_neg;
		
		assign mcmc_finish = mcmc_finish_s;


endmodule

