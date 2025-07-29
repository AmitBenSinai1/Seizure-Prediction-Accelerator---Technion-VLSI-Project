/*------------------------------------------------------------------------------
 * File          : seizure_top.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Feb 15, 2024
 * Description   :
 *------------------------------------------------------------------------------*/
`timescale 1ns/1ps
//`include "/users/epamof/Project/design/define.sv"


module seizure_top #() (
						input wire apb_clk, // APB clock
						input wire reset_n, // APB reset
						input wire [9:0] apb_addr, // APB address bus
						input wire apb_pwrite, // APB write enable
						input wire apb_psel, // APB peripheral select
						input wire apb_penable, // APB peripheral enable
						input wire [31:0] apb_pwdata, // APB write data
						output wire [31:0] apb_prdata, // APB read data
						output wire apb_ready,
						output wire seizure_prediction
						);

	reg [17:0] pc_fifo_data; //Q1.5.12
	wire pc_fifo_read;
	wire [7:0] pc_fifo_addr;
	wire start_core;
	wire [71:0] mcmc_lut_data;
	wire [10:0] mcmc_lut_addr;
	reg mcmc_lut_read;
	reg [17:0] dctc_fifo_data;
	wire dctc_fifo_read;
	wire [7:0] dctc_fifo_addr;


	seizure_regfile #() seizure_regfile (
		.apb_clk(apb_clk),
		.reset_n(reset_n),
		.apb_addr(apb_addr),
		.apb_pwrite(apb_pwrite),
		.apb_psel(apb_psel),
		.apb_penable(apb_penable),
		.apb_pwdata(apb_pwdata),
		.pc_fifo_addr(pc_fifo_addr),
		.pc_fifo_read(pc_fifo_read),
		.mcmc_lut_data(mcmc_lut_data),
		.mcmc_lut_addr(mcmc_lut_addr),
		.mcmc_lut_read(mcmc_lut_read),
		.dctc_fifo_addr(dctc_fifo_addr),
		.dctc_fifo_read(dctc_fifo_read),
		.apb_prdata(apb_prdata),
		.apb_ready(apb_ready), 
		.pc_fifo_data(pc_fifo_data),
		.dctc_fifo_data(dctc_fifo_data),
		.start_core(start_core)
	);
	
	
	seizure_core #() seizure_core
	(
		.clk(apb_clk),
		.reset_n(reset_n),
		.start(start_core),
		.pc_fifo_data(pc_fifo_data),
		.pc_fifo_addr(pc_fifo_addr),
		.mcmc_lut_data(mcmc_lut_data),
		.mcmc_lut_addr(mcmc_lut_addr),
		.mcmc_lut_read(mcmc_lut_read),
		.pc_fifo_read(pc_fifo_read),
		.dctc_fifo_data(dctc_fifo_data),
		.dctc_fifo_addr(dctc_fifo_addr),
		.dctc_fifo_read(dctc_fifo_read),
		.seizure_prediction(seizure_prediction)
	);
						

endmodule