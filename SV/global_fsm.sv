/*------------------------------------------------------------------------------
 * File          : global_fsm.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Dec 4, 2024
 * Description   :
 *------------------------------------------------------------------------------*/

module global_fsm #() 
(
	input wire clk,
	input wire reset_n, 
	input wire start_core,
	input logic param_calc_finish,
	input logic mcmc_finish,
	input logic dctc_finish,
	output logic [1:0] state
);

	// States for the global FSM
	typedef enum logic [1:0] {
	IDLE,
	PARAM_CALC,
	MCMC,
	DCTC
	} global_fsm_state_t;
	
	global_fsm_state_t current_state, next_state;
//	logic [1:0] current_state;
//	logic [1:0] next_state;
//	
	always_comb begin
	case (current_state)
		IDLE: begin
		if(start_core)			next_state = PARAM_CALC;
		else 					next_state = IDLE;
		end
		
		PARAM_CALC: begin 
		if(param_calc_finish) 	next_state = MCMC;
		else 					next_state = PARAM_CALC;
		end
		
		MCMC: begin
		if(mcmc_finish) 		next_state = DCTC;
		else					next_state = MCMC;
		end
		
		DCTC: begin
		if(dctc_finish) 	next_state = IDLE;
		else						next_state = DCTC;
		end
		
		default: next_state = IDLE;
		endcase
	end
	
	always_ff @(posedge clk or negedge reset_n) begin
	if (!reset_n)
		current_state <= IDLE;
	else
		current_state <= next_state;
	end
	
	assign state = current_state;

endmodule