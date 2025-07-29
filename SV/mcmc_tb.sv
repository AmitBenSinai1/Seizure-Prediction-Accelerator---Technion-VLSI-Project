/*------------------------------------------------------------------------------
 * File          : mcmc_tb.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : May 14, 2025
 * Description   :
 *------------------------------------------------------------------------------*/
`timescale 1ns/1ps
`include "/users/epamof/Project/design/define.sv"

module mcmc_tb;

	// Parameters
	parameter DATA_WIDTH = 18;
	
	// Inputs
	logic clk;
	logic reset_n;
	logic start;
	reg [71:0] mcmc_lut_data;
	logic [17:0] mean_pos;
	logic [18:0] std_pos;
	logic [17:0] mean_neg;
	logic [18:0] std_neg;
	
	// Outputs
	reg[10:0] mcmc_lut_addr;
	reg mcmc_lut_read;
	logic [17:0] sample_one_pos;
	logic [17:0] sample_one_neg;
	logic [17:0] sample_two_pos;
	logic [17:0] sample_two_neg;
	
	// Instantiate the Unit Under Test (UUT)
	mcmc uut (
	  .clk(clk),
	  .reset_n(reset_n),
	  .start(start),
	  .mcmc_lut_data(mcmc_lut_data),
	  .mcmc_lut_addr(mcmc_lut_addr),
	  .mcmc_lut_read(mcmc_lut_read),
	  .mean_pos(mean_pos),
	  .std_pos(std_pos),
	  .mean_neg(mean_neg),
	  .std_neg(std_neg),
	  .sample_one_pos(sample_one_pos),
	  .sample_one_neg(sample_one_neg),
	  .sample_two_pos(sample_two_pos),
	  .sample_two_neg(sample_two_neg),
	  .mcmc_finish(mcmc_finish)
	);
	
	// Clock generation
	always #5 clk = ~clk;
	
	// Simulate LUT behavior
//	always_ff @(posedge clk) begin
//		if(!reset_n) 						mcmc_lut_read <= #1 72'b0;
//		else if (mcmc_lut_read)  			mcmc_lut_data <= 72'h123456789ABCDEF123;
//	end
	
	// Stimulus
	initial begin
	  // Initialize inputs
	  clk = 0;
	  reset_n = 0;
	  start = 0;
	  //mcmc_lut_data = 0;
	  mean_pos = 18'b000001000000000000; // +1.0 in Q1.5.12
	  std_pos  = 19'b0000010000000000000; // +2.0 in Q1.6.12
	  mean_neg = 18'b100011000000000000; // -3.0 in Q1.5.12
	  std_neg  = 19'b0000100000000000000; // 4.0 in Q1.6.12
	
	  // Apply reset
	  #10 reset_n = 1;
	
	  // Start operation
	  #10 start = 1;
	  #10 start = 0;
	
	  // Wait for a few cycles to observe output
	  repeat (20) @(posedge clk);
	
	  // Print outputs
	  $display("Sample One POS: %0h", sample_one_pos);
	  $display("Sample One NEG: %0h", sample_one_neg);
	  $display("Sample Two POS: %0h", sample_two_pos);
	  $display("Sample Two NEG: %0h", sample_two_neg);
	  $display("LUT Address: %0d", mcmc_lut_addr);
	  $display("LUT Read: %0b", mcmc_lut_read);
	
	  // Finish simulation
	  #20 $stop;
	end

endmodule
