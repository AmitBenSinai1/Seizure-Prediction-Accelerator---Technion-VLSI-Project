/*------------------------------------------------------------------------------
 * File          : seizure_core.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Feb 22, 2024
 * Description   :
 *------------------------------------------------------------------------------*/
`timescale 1ns/1ps
`include "/users/epamof/Project/design/define.sv"

module seizure_core #() (
	input wire clk,
	input wire reset_n,
	input wire start,
	input wire [17:0] pc_fifo_data,
	output wire [7:0] pc_fifo_addr,
	input wire [71:0] mcmc_lut_data,
	output wire [10:0] mcmc_lut_addr,
	output reg mcmc_lut_read, // output to LUT
	output wire pc_fifo_read,
	input wire [17:0] dctc_fifo_data,
	output wire [7:0] dctc_fifo_addr,
	output wire dctc_fifo_read,
	output wire seizure_prediction
	); 

	wire [17:0] mean_pos; //Q1.5.12
	wire [18:0] std_pos; //standart deviation, Q1.6.12
	wire [17:0] mean_neg; //Q1.5.12 
	wire [18:0] std_neg; //standart deviation, Q1.6.12
	
	/////
	wire param_calc_finish;
	/////
	
	wire [17:0] mcmc_sample_one_pos;
	wire [17:0] mcmc_sample_two_pos;
	wire [17:0] mcmc_sample_three_pos;
	wire [17:0] mcmc_sample_four_pos;
	wire [17:0] mcmc_sample_one_neg;
	wire [17:0] mcmc_sample_two_neg;
	wire [17:0] mcmc_sample_three_neg;
	wire [17:0] mcmc_sample_four_neg;
	
	wire mcmc_finish;
	
	logic start_pc;
	logic start_pc_d;
	logic start_pc_rise;
	
	logic start_mcmc;
	logic start_mcmc_d;
	logic start_mcmc_rise;
	
	logic start_dctc;
	logic start_dctc_d;
	logic start_dctc_rise;
	logic [1:0] fsm_state;
	logic dctc_finish;



	// Instantiate the FSM
	global_fsm fsm_inst (
		.clk(clk),
		.reset_n(reset_n),
		.start_core(start),
		.param_calc_finish(param_calc_finish),
		.mcmc_finish(mcmc_finish),
		.dctc_finish(dctc_finish),
		.state(fsm_state)
	);
	
	
	
	param_calc #(
		//.DATA_WIDTH(18),.ADDR_WIDTH(8)
	) pc
	
	(
		.clk(clk),
		.reset_n(reset_n), 
		.start(start_pc_rise), // Start when FSM is in PARAM_CALC state),
		.pc_fifo_data(pc_fifo_data), //input from fifo - one EEG signal 
		.pc_fifo_addr(pc_fifo_addr), // output tp fifo
		.pc_fifo_read(pc_fifo_read), // output to fifo
		.mean_pos(mean_pos), //Q1.5.12
		.std_pos(std_pos), //standart deviation, Q1.6.12
		.mean_neg(mean_neg),//Q1.5.12
		.std_neg(std_neg), //standart deviation, Q1.6.12		
		.param_calc_finish(param_calc_finish)
	);
	
	mcmc #() mcmc
	(
		.clk(clk),
		.reset_n(reset_n), 
		.start(start_mcmc_rise), // Start when FSM is in PARAM_CALC state),
		.mcmc_lut_data(mcmc_lut_data), //input from fifo - one EEG signal 
		.mcmc_lut_addr(mcmc_lut_addr), // output tp fifo
		.mcmc_lut_read(mcmc_lut_read), // output to fifo
		.mean_pos(mean_pos), //Q1.5.12
		.std_pos(std_pos), //standart deviation, Q1.6.12
		.mean_neg(mean_neg),//Q1.5.12
		.std_neg(std_neg), //standart deviation, Q1.6.12
		.sample_one_pos(mcmc_sample_one_pos),
		.sample_two_pos(mcmc_sample_two_pos),
		.sample_three_pos(mcmc_sample_three_pos),
		.sample_four_pos(mcmc_sample_four_pos),
		.sample_one_neg(mcmc_sample_one_neg),
		.sample_two_neg(mcmc_sample_two_neg),
		.sample_three_neg(mcmc_sample_three_neg),
		.sample_four_neg(mcmc_sample_four_neg),
		.mcmc_finish(mcmc_finish)
	);
	
	
	dctc #() dctc
	(
		.clk(clk),
		.reset_n(reset_n), 
		.start(start_dctc_rise), 
		.sample_one_pos(mcmc_sample_one_pos),
		.sample_two_pos(mcmc_sample_two_pos),
		.sample_three_pos(mcmc_sample_three_pos),
		.sample_four_pos(mcmc_sample_four_pos),
		.sample_one_neg(mcmc_sample_one_neg),
		.sample_two_neg(mcmc_sample_two_neg),
		.sample_three_neg(mcmc_sample_three_neg),
		.sample_four_neg(mcmc_sample_four_neg),
		.fifo_addr(dctc_fifo_addr),
		.fifo_read(dctc_fifo_read),
		.fifo_sample(dctc_fifo_data),
		.dctc_finish(dctc_finish),
		.seizure_prediction(seizure_prediction)
	);
	
	

	
	assign start_pc = (fsm_state == 2'b01);
	
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)					start_pc_d <= #1 1'b0;			
		else   							start_pc_d <= #1 start_pc;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)									start_pc_rise <= #1 1'b0;			
		else if(!start_pc_d && start_pc)   				start_pc_rise <= #1 1'b1;
		else 											start_pc_rise <= #1 1'b0;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)						start_mcmc <= #1 1'b0;			
		else if (param_calc_finish) 		start_mcmc <= #1 1'b1;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)					start_mcmc_d <= #1 1'b0;			
		else   							start_mcmc_d <= #1 start_mcmc;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)									start_mcmc_rise <= #1 1'b0;			
		else if(!start_mcmc_d && start_mcmc)   			start_mcmc_rise <= #1 1'b1;
		else 											start_mcmc_rise <= #1 1'b0;
	end
	
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)						start_dctc <= #1 1'b0;			
		else if (mcmc_finish) 				start_dctc <= #1 1'b1;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)					start_dctc_d <= #1 1'b0;			
		else   							start_dctc_d <= #1 start_dctc;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)									start_dctc_rise <= #1 1'b0;			
		else if(!start_dctc_d && start_dctc)   			start_dctc_rise <= #1 1'b1;
		else 											start_dctc_rise <= #1 1'b0;
	end
	

endmodule