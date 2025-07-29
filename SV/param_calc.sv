/*------------------------------------------------------------------------------
 * File          : param_calc.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Mar 21, 2024
 * Description   :
 *------------------------------------------------------------------------------*/
`timescale 1ns/1ps
`include "/users/epamof/Project/design/define.sv"
parameter NUM_OF_INPUTS = 17; //Default is 256

module param_calc #(
	//parameter DATA_WIDTH = 18,
	//parameter ADDR_WIDTH = 8
					)
					(
						input wire clk, // APB clock
						input wire reset_n, // APB reset
						input wire start,
						input reg [17:0] pc_fifo_data, //input from fifo - one EEG signal 
						output reg [7:0] pc_fifo_addr, // output tp fifo
						output reg pc_fifo_read, // output to fifo
						output wire [17:0] mean_pos, //Q1.5.12
						output wire [18:0] std_pos, //standart deviation, Q1.6.12
						output wire [17:0] mean_neg,//Q1.5.12
						output wire [18:0] std_neg, //standart deviation, Q1.6.12
						output logic param_calc_finish
					 );


	logic [17:0] eeg_pos;
	logic [17:0] eeg_neg;
	logic start_mean_pos;
	logic start_mean_neg;
	logic start_div;

	logic complete_div_pos;
	logic complete_div_neg;
	logic complete_std_sqrt_pos;
	logic complete_std_sqrt_neg;
	
	logic complete_acc_pos;
	logic complete_acc_neg;
	
	logic [7:0] count_pos;
	logic [7:0] count_neg;
	logic [7:0] count_std_pos;
	logic [7:0] count_std_neg;
	

	logic start_mcmc; 
	
	logic complete_div_pos_d;
	logic complete_div_neg_d;

	
	logic [17:0] eeg_data_d;
	logic [17:0] eeg_data_d2;
	logic [17:0] eeg_data_d3;
	logic [17:0] eeg_data_d4;
	
	
	logic [17:0] eeg_data_d2_pos;
	logic [17:0] eeg_data_d2_neg;
	
	logic [17:0] eeg_data_d4_pos;
	logic [17:0] eeg_data_d4_neg;


	logic complete_div_rise;
	
	///////NEW
	logic start_std_pos_rise;
	logic start_std_neg_rise;
	
	logic complete_acc_pos_d1;
	logic complete_acc_neg_d1;
	logic complete_acc_pos_d2;
	logic complete_acc_neg_d2;
	logic complete_acc_pos_d3;
	logic complete_acc_neg_d3;
	logic complete_acc_pos_d4;
	logic complete_acc_neg_d4;
	logic complete_acc_pos_d5;
	logic complete_acc_neg_d5;
	logic complete_acc_pos_d6;
	logic complete_acc_neg_d6;
	logic complete_acc_pos_d7;
	logic complete_acc_neg_d7;
	logic complete_acc_pos_d8;
	logic complete_acc_neg_d8;
	logic complete_acc_pos_d9;
	logic complete_acc_neg_d9;
	
	logic complete_acc_pos7_pulse;
	logic complete_acc_neg7_pulse;
	
	logic complete_std_pos;
	logic complete_std_sqrt_pos_d;
	logic complete_std_neg;
	logic complete_std_sqrt_neg_d;
	
	logic enter_mean_div;
	logic enter_mean_div_d;
	
	logic enter_std_finish;
	logic enter_std_finish_d;
	
	logic [1:0] clk_addr_cnt;

	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n)						clk_addr_cnt <= #1 2'b0;
		else if(clk_addr_cnt < 3)			clk_addr_cnt <= #1 clk_addr_cnt + 1;
		else								clk_addr_cnt <= #1 2'b0;
	end
	

	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n)		complete_div_pos_d <= #1 1'b0;
		else 				complete_div_pos_d <= #1 complete_div_pos;												
	end
	

	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 	complete_div_neg_d <= #1 1'b0;
		else 			complete_div_neg_d <= #1 complete_div_neg;												
	end
	

	
	mean_calc #() mean_calc_pos(
		.clk(clk),
		.reset_n(reset_n),
		.start(start_mean_pos),
		.eeg(eeg_pos), 
		.start_div(start_div),
		.complete_div(complete_div_pos),
		.mean(mean_pos),
		.count(count_pos)
	);
	
	
	mean_calc #() mean_calc_neg(
		.clk(clk),
		.reset_n(reset_n),
		.start(start_mean_neg),
		.eeg(eeg_neg), 
		.start_div(start_div),
		.complete_div(complete_div_neg),
		.mean(mean_neg),
		.count(count_neg)
	);
	

	
	std_calc #() std_calc_pos(
		.clk(clk),
		.reset_n(reset_n),
		.start(start_std_pos_rise),
		.eeg(eeg_data_d4_pos),
		.mean(mean_pos),
		.count(count_pos),
		.complete_acc(complete_acc_pos7_pulse),
		.complete_sqrt(complete_std_sqrt_pos),
		.std_dev(std_pos)
	);
	
	std_calc #() std_calc_neg(
		.clk(clk),
		.reset_n(reset_n),
		.start(start_std_neg_rise),
		.eeg(eeg_data_d4_neg),
		.mean(mean_neg),
		.count(count_neg),
		.complete_acc(complete_acc_neg7_pulse),
		.complete_sqrt(complete_std_sqrt_neg),
		.std_dev(std_neg)
	);
	
	
	// Define states for the FSM
	typedef enum logic [3:0] {
		IDLE,
		PROLOG,
		MEAN_POSITIVE,
		MEAN_NEGATIVE,
		MEAN_DIV,
		STD_POSITIVE,
		STD_NEGATIVE, //maybe only one STD state, so they will work parallel
		STD_FINISH,
		MCMC_START //maybe delete (we have STD_finish)
	} fsm_state_t;

	// Declare signals for the FSM

	logic [17:0] eeg_data; // pc_fifo_addr delayed
	fsm_state_t state, next_state;

	// Define FSM logic
	
	//adderss only next state
	always_comb begin
		case (state)
			IDLE: begin
				if(start)			next_state = PROLOG;
				else 				next_state = IDLE;
			end
			
			PROLOG: begin //only for the first eeg_signal
				if (eeg_data[17] == 1'b1)				next_state = MEAN_NEGATIVE;
				else if (eeg_data[17] == 1'b0)			next_state = MEAN_POSITIVE;
				else 									next_state = PROLOG;
			end
			
			MEAN_POSITIVE: begin
				if(enter_mean_div_d) 		next_state = MEAN_DIV;
				else						next_state = (eeg_data[17] == 1'b1) ? MEAN_NEGATIVE : MEAN_POSITIVE;
					
			end
			
			MEAN_NEGATIVE: begin
				if(enter_mean_div_d) 		next_state = MEAN_DIV;
				else						next_state = (eeg_data[17] == 1'b1) ? MEAN_NEGATIVE : MEAN_POSITIVE;
			end
			
			MEAN_DIV: begin
				if (complete_div_rise) 		next_state = (eeg_data[17] == 1'b1) ? STD_NEGATIVE : STD_POSITIVE;////////
				else						next_state = MEAN_DIV;
			end
			
			STD_POSITIVE: begin
				if(enter_std_finish_d) 		next_state = STD_FINISH;
				else						next_state = (eeg_data_d4[17] == 1'b1) ? STD_NEGATIVE : STD_POSITIVE;
			end
			
			STD_NEGATIVE: begin
				if(enter_std_finish_d) 		next_state = STD_FINISH;
				else						next_state = (eeg_data_d4[17] == 1'b1) ? STD_NEGATIVE : STD_POSITIVE; 
			end
			
			STD_FINISH: begin
				if(start_mcmc) 	 next_state = MCMC_START;
				else 			 next_state = STD_FINISH; 
			end
			
			MCMC_START: begin
					next_state = MCMC_START; 
			end
			
			default: next_state = IDLE;
		endcase
	end
	

	assign  start_mcmc = (complete_std_pos && complete_std_neg) ? 1'b1 : 1'b0;
	/////////////////////////////////////
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 	complete_std_sqrt_pos_d <= #1 1'b0;
		else 			complete_std_sqrt_pos_d <= #1 complete_std_sqrt_pos;												
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 	complete_std_sqrt_neg_d <= #1 1'b0;
		else 			complete_std_sqrt_neg_d <= #1 complete_std_sqrt_neg;												
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)																		complete_std_pos <= #1 1'b0;			
		else if(complete_std_sqrt_pos && !complete_std_sqrt_pos_d && state == STD_FINISH) 	complete_std_pos <= #1 1'b1; 
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)																		complete_std_neg <= #1 1'b0;			
		else if(complete_std_sqrt_neg && !complete_std_sqrt_neg_d && state == STD_FINISH) 	complete_std_neg <= #1 1'b1;
	end
	
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)	 state <= #1 IDLE;		
		else			 state <= #1 next_state;
	end
		
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)																																				eeg_data <= #1 18'b0;			
		else if(state == PROLOG || state == MEAN_POSITIVE || state == MEAN_NEGATIVE || state == MEAN_DIV || state == STD_POSITIVE || state == STD_NEGATIVE)			eeg_data <= #1 pc_fifo_data;
		else 																																						eeg_data <= #1 18'b0;	
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)																																							pc_fifo_addr <= #1 18'b0;	
		else if(state == MEAN_DIV)																																				pc_fifo_addr <= #1 18'b0;
		else if (state == PROLOG)																																				pc_fifo_addr <= #1 18'b0;
		else if((state == MEAN_POSITIVE || state == MEAN_NEGATIVE || state == STD_POSITIVE || state == STD_NEGATIVE) && clk_addr_cnt == 3 && pc_fifo_addr < NUM_OF_INPUTS)		pc_fifo_addr <= #1 pc_fifo_addr + 1;
		else 																																									pc_fifo_addr <= #1 pc_fifo_addr;	
	end
	
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)																																							pc_fifo_read <= #1 1'b0;
		else if (((state == PROLOG) || (state == MEAN_DIV)) && clk_addr_cnt == 0)																								pc_fifo_read <= #1 1'b1; /////
		else if((state == MEAN_POSITIVE || state == MEAN_NEGATIVE || state == STD_POSITIVE || state == STD_NEGATIVE) && clk_addr_cnt == 3 && pc_fifo_addr < NUM_OF_INPUTS)		pc_fifo_read <= #1 1'b1;
		else 																																									pc_fifo_read <= #1 1'b0;	
	end
	
	////////
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n)															start_mean_pos <= #1 1'b0;
		else if(next_state == MEAN_POSITIVE && state != MEAN_POSITIVE) 			start_mean_pos <= #1 1'b1;
		else 																	start_mean_pos <= #1 1'b0;	
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n)																start_mean_neg <= #1 1'b0;
		else if(next_state == MEAN_NEGATIVE && state != MEAN_NEGATIVE) 	start_mean_neg <= #1 1'b1;
		else 																		start_mean_neg <= #1 1'b0;	
	end
	
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)								eeg_pos <= #1 18'b0;			
		else if(eeg_data[17] == 1'b0) 				eeg_pos <= #1 eeg_data;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)								eeg_neg <= #1 18'b0;			
		else if(eeg_data[17] == 1'b1) 				eeg_neg <= #1 eeg_data;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 													count_std_pos <= #1 8'b0;
		else if(state == STD_POSITIVE && next_state != STD_POSITIVE) 	count_std_pos <= #1 count_std_pos + 1;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 													count_std_neg <= #1 8'b0;
		else if(state == STD_NEGATIVE && next_state != STD_NEGATIVE) 	count_std_neg <= #1 count_std_neg + 1;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 								complete_acc_pos <= #1 1'b0;
		else if(count_std_pos == 8'd8) 				complete_acc_pos <= #1 1'b1;
		else 										complete_acc_pos <= #1 1'b0;	
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 								complete_acc_neg <= #1 1'b0;
		else if(count_std_neg == 8'd8) 				complete_acc_neg <= #1 1'b1; 
		else 										complete_acc_neg <= #1 1'b0;	
	end
		
///////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////	
//THIS 4 FLIP-FLOPS MAKES complete_acc_pos AND complete_acc_neg BE A PULSE
	
	//1
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d1 <= #1 1'b0;
		else				complete_acc_pos_d1 <= #1 complete_acc_pos;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d1 <= #1 1'b0;
		else				complete_acc_neg_d1 <= #1 complete_acc_neg;
	end
	
	//2
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d2 <= #1 1'b0;
		else				complete_acc_pos_d2 <= #1 complete_acc_pos_d1;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d2 <= #1 1'b0;
		else				complete_acc_neg_d2 <= #1 complete_acc_neg_d1;
	end
	
	//3
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d3 <= #1 1'b0;
		else				complete_acc_pos_d3 <= #1 complete_acc_pos_d2;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d3 <= #1 1'b0;
		else				complete_acc_neg_d3 <= #1 complete_acc_neg_d2;
	end
	
	//4
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d4 <= #1 1'b0;
		else				complete_acc_pos_d4 <= #1 complete_acc_pos_d3;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d4 <= #1 1'b0;
		else				complete_acc_neg_d4 <= #1 complete_acc_neg_d3;
	end
	
	//5
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d5 <= #1 1'b0;
		else				complete_acc_pos_d5 <= #1 complete_acc_pos_d4;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d5 <= #1 1'b0;
		else				complete_acc_neg_d5 <= #1 complete_acc_neg_d4;
	end
	
	//6
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d6 <= #1 1'b0;
		else				complete_acc_pos_d6 <= #1 complete_acc_pos_d5;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d6 <= #1 1'b0;
		else				complete_acc_neg_d6 <= #1 complete_acc_neg_d5;
	end
	
	//7
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d7 <= #1 1'b0;
		else				complete_acc_pos_d7 <= #1 complete_acc_pos_d6;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d7 <= #1 1'b0;
		else				complete_acc_neg_d7 <= #1 complete_acc_neg_d6;
	end
	
	//8
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d8 <= #1 1'b0;
		else				complete_acc_pos_d8 <= #1 complete_acc_pos_d7;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d8 <= #1 1'b0;
		else				complete_acc_neg_d8 <= #1 complete_acc_neg_d7;
	end
	
	//9
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_pos_d9 <= #1 1'b0;
		else				complete_acc_pos_d9 <= #1 complete_acc_pos_d8;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		complete_acc_neg_d9 <= #1 1'b0;
		else				complete_acc_neg_d9 <= #1 complete_acc_neg_d8;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 											complete_acc_pos7_pulse <= #1 1'b0;
		else if(complete_acc_pos_d7 && !complete_acc_pos_d9)	complete_acc_pos7_pulse <= #1 1'b1;
		else 													complete_acc_pos7_pulse <= #1 1'b0;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 											complete_acc_neg7_pulse <= #1 1'b0;
		else if(complete_acc_neg_d7 && !complete_acc_neg_d9)	complete_acc_neg7_pulse <= #1 1'b1;
		else 													complete_acc_neg7_pulse <= #1 1'b0;
	end		
		

	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n)						param_calc_finish <= #1 1'b0;
		else if(state == MCMC_START) 		param_calc_finish <= #1 1'b1;
		else 								param_calc_finish <= #1 1'b0;	
	end
	
	assign complete_div_rise = ((complete_div_pos && !complete_div_pos_d) || (complete_div_neg && !complete_div_neg_d)) && (state != PROLOG);


	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 					eeg_data_d <= #1 18'b0;
		else 							eeg_data_d <= #1 eeg_data;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		eeg_data_d2 <= #1 18'b0;
		else 				eeg_data_d2 <= #1 eeg_data_d;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		eeg_data_d3 <= #1 18'b0;
		else				eeg_data_d3 <= #1 eeg_data_d2;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 		eeg_data_d4 <= #1 18'b0;
		else				eeg_data_d4 <= #1 eeg_data_d3;
	end

	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 							eeg_data_d2_pos <= #1 18'b0;
		else if((eeg_data_d[17] == 1'b0))		eeg_data_d2_pos <= #1 eeg_data_d;
	end

	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 							eeg_data_d2_neg <= #1 18'b0;
		else if(eeg_data_d[17] == 1'b1)			eeg_data_d2_neg <= #1 eeg_data_d;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 							eeg_data_d4_pos <= #1 18'b0;
		else if((eeg_data_d3[17] == 1'b0))		eeg_data_d4_pos <= #1 eeg_data_d3;
	end

	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 							eeg_data_d4_neg <= #1 18'b0;
		else if(eeg_data_d3[17] == 1'b1)		eeg_data_d4_neg <= #1 eeg_data_d3;
	end
	

	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 																								
			start_std_pos_rise <= #1 1'b0;
		else if((complete_div_rise) && (state == MEAN_DIV) && (eeg_data_d4[17] == 1'b0))															
			start_std_pos_rise <= #1 1'b1;	
		else if(((state == STD_POSITIVE) || (state == STD_NEGATIVE)) &&  (eeg_data_d4[17] == 1'b0)) 
			start_std_pos_rise <= #1 1'b1;
		else 																										
			start_std_pos_rise <= #1 1'b0;
	end
	

	always_ff @(posedge clk or negedge reset_n) begin
		if(!reset_n) 																								
			start_std_neg_rise <= #1 1'b0;
		else if((complete_div_rise) && (state == MEAN_DIV) && (eeg_data_d4[17] == 1'b1))															
			start_std_neg_rise <= #1 1'b1;	
		else if((state == STD_POSITIVE) && (eeg_data_d4[17] == 1'b1))
			start_std_neg_rise <= #1 1'b1;
		else 																										
			start_std_neg_rise <= #1 1'b0;
	end


	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)											enter_mean_div <= #1 1'b0;			
		else if(count_pos + count_neg == NUM_OF_INPUTS - 1) 	enter_mean_div <= #1 1'b1; ////// WE CHANGED HERE
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)			enter_mean_div_d <= #1 1'b0;			
		else 			 		enter_mean_div_d <= #1 enter_mean_div;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)											enter_std_finish <= #1 1'b0;			
		else if(complete_acc_pos && complete_acc_neg)   		enter_std_finish <= #1 1'b1;
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
		if (!reset_n)			enter_std_finish_d <= #1 1'b0;			
		else 			 		enter_std_finish_d <= #1 enter_std_finish;
	end
	

	assign start_div = ((state == MEAN_POSITIVE || state == MEAN_NEGATIVE) && (next_state == MEAN_DIV));

	
endmodule

