/*------------------------------------------------------------------------------
 * File          : seizure_regfile.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Feb 15, 2024
 * Description   :
 *------------------------------------------------------------------------------*/
`timescale 1ns/1ps
`include "/users/epamof/Project/design/define.sv"


module seizure_regfile 	#(parameter DATA_WIDTH = 18, parameter ADDR_WIDTH = 8,
						  parameter MCMC_DATA_WIDTH = 72, parameter MCMC_ADDR_WIDTH = 2048)
						(
						 input wire apb_clk, // APB clock
						 input wire reset_n, // APB reset
						 input wire [9:0] apb_addr, // APB address bus
						 input wire apb_pwrite, // APB write enable
						 input wire apb_psel, // APB peripheral select
						 input wire apb_penable, // APB peripheral enable
						 input wire [31:0] apb_pwdata, // APB write data
						 input wire [7:0] pc_fifo_addr, // input from param calculation adderss in FIFO
						 input wire pc_fifo_read, // input from param calculation read (read enable)
						 output reg [71:0] mcmc_lut_data,
						 input wire [10:0] mcmc_lut_addr,
						 input reg mcmc_lut_read, // output to LUT
						 input wire [7:0] dctc_fifo_addr,
						 input wire dctc_fifo_read,
						 output reg [31:0] apb_prdata, // APB read data
						 output reg apb_ready, 
						 output reg [17:0] pc_fifo_data, //output for param calculation - one EEG signal
						 output reg [17:0] dctc_fifo_data,
						 output reg start_core
						 );


	////////////wires
	wire start_sel = (apb_addr == `START_ADDR);

	wire fifo_addr_sel = (apb_addr == `FIFO_ADDR); 
	wire fifo_data_read = (apb_addr == `FIFO_DATA) || pc_fifo_read || dctc_fifo_read;
	
	reg fifo_data_read_d;
	
	reg [ADDR_WIDTH-1:0] fifo_addr;
	reg [DATA_WIDTH-1:0] fifo_data_reg;
	
	wire fifo_data_read_rise = fifo_data_read & !fifo_data_read_d ;
	reg fifo_data_read_rise_d;
	reg cs;
	reg we;
	reg oe;
	
	// Intermediate wire to connect fifo_data to ram_sp_sr_sw
	wire [DATA_WIDTH-1:0] fifo_data_in;
	wire [DATA_WIDTH-1:0] fifo_data_out;
	assign fifo_data_in = we ? fifo_data_reg : {DATA_WIDTH{1'bz}};
	
	// ==== LUT MCMC MEMORY CONNECTION ====
	
	wire mcmc_addr_sel = (apb_addr == `LUT_ADDR);
	wire mcmc_data_read_1 = (apb_addr == `LUT_DATA_1);
	wire mcmc_data_read_2 = (apb_addr == `LUT_DATA_2);
	wire mcmc_data_read_3 = (apb_addr == `LUT_DATA_3) || mcmc_lut_read;

	reg mcmc_data_read_d_1;
	reg mcmc_data_read_d_2;
	reg mcmc_data_read_d_3;
	
	reg [10:0] lut_addr;
	reg [31:0] mcmc_data_reg_1;
	reg [31:0] mcmc_data_reg_2;
	reg [31:0] mcmc_data_reg_3;
	wire [71:0] mcmc_data_reg;

	wire mcmc_data_read_rise_1 = mcmc_data_read_1 & !mcmc_data_read_d_1;
	wire mcmc_data_read_rise_2 = mcmc_data_read_2 & !mcmc_data_read_d_2;
	wire mcmc_data_read_rise_3 = mcmc_data_read_3 & !mcmc_data_read_d_3;

	reg mcmc_lut_read_d; 
	wire mcmc_lut_read_rise =  mcmc_lut_read & !mcmc_lut_read_d;

	reg mcmc_data_read_rise_d_1;
	reg mcmc_data_read_rise_d_2;
	reg mcmc_data_read_rise_d_3;
	reg lut_cs;
	reg lut_we;
	reg lut_oe; 

	wire [71:0] lut_data_io;

	
	//write to start_core
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            						  		start_core <= #1 1'b0;
		else if (apb_penable && apb_pwrite && start_sel)  		start_core <= #1 apb_pwdata[0];
		else 													start_core <= #1 1'b0;
	end
	
	//read from start_core  & reg_1
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            						apb_prdata <= #1 32'h0; 
		else if (fifo_data_read_rise_d)					apb_prdata <= #1 fifo_data_out;
		else if (mcmc_data_read_rise_d_1)				apb_prdata <= #1 mcmc_data_reg_1;
		else if (mcmc_data_read_rise_d_2)				apb_prdata <= #1 mcmc_data_reg_2;
		else if (mcmc_data_read_rise_d_3)				apb_prdata <= #1 mcmc_data_reg_3;
		else if (apb_penable && !apb_pwrite) 					
		if (start_sel)  								apb_prdata <= #1 {31'b0, start_core};
	end
	
	
	//apb ready signal
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)  apb_ready <= #1 1'b0;
		else 		   apb_ready <= #1 (apb_penable && (start_sel) || fifo_data_read_rise_d);
	end
	
	
	///////fifo
	dpram256x18_cb fifo (
		.A1(fifo_addr),       // Address Input Port 1 (Mapped from fifo_addr)    
		.A2(8'b0),       // Address Input Port 2 (if not separate, use same signal)
		.CEB1(!apb_clk),         // Chip Enable Port 1 (Mapped from cs)
		.CEB2(1'b1),            // Chip Enable Port 2 (assumed same signal, modify if needed)
		.WEB1(!we),            // Write Enable Port 1 (Mapped from we)
		.WEB2(1'b1),            // Write Enable Port 2 (if separate control required, update accordingly)
		.OEB1(!oe),            // Output Enable Port 1 (Mapped from oe)
		.OEB2(1'b1),            // Output Enable Port 2 (assumed same signal, modify if needed)
		.CSB1(!cs),            // Chip Select Port 1 (Mapped from cs)
		.CSB2(1'b1),            // Chip Select Port 2 (if separate, update accordingly)
		.I1(fifo_data_in),       // Input Data Port 1 (Mapped from fifo_data, verify if directional split required)
		.I2(18'b0),       // Input Data Port 2 (modify as necessary if data separation required)
		.O1(fifo_data_out),       // Output Data Port 1 (Mapped from fifo_data bi-directional)
		.O2()        // Output Data Port 2 (if separate, modify accordingly)
	);
	
	//fifo data read rise delay
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	fifo_data_read_rise_d <= #1 1'b0;
		else 						fifo_data_read_rise_d <= #1 fifo_data_read_rise; 
	end

	//fifo_data_read_d - delay of data_sel
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	fifo_data_read_d <= #1 1'b0;
		else 						fifo_data_read_d <= #1 fifo_data_read; 
	end
	
	//cs - chip select
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            											cs <= #1 1'b0;
		else if ((apb_penable && fifo_addr_sel) || fifo_data_read_rise)  	cs <= #1 1'b1;
		else 																cs <= #1 1'b0;
	end

	//we - write enable
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            										we <= #1 1'b0;
		else if (apb_penable && apb_pwrite && fifo_addr_sel)			we <= #1 1'b1;
		else 															we <= #1 1'b0;
	end
	
	//oe - read enable
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            						  									oe <= #1 1'b0;
		else if (pc_fifo_read || dctc_fifo_read)											oe <= #1 1'b1; 
		else if ((apb_penable && !apb_pwrite && fifo_addr_sel) || fifo_data_read_rise)  	oe <= #1 1'b1;
		else 																				oe <= #1 1'b0;
	end
	
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            						  				fifo_addr <= #1 {ADDR_WIDTH{1'b0}};
		else if (pc_fifo_read)											fifo_addr <= #1 pc_fifo_addr[ADDR_WIDTH-1:0]; 
		else if (dctc_fifo_read)  										fifo_addr <= #1 dctc_fifo_addr[ADDR_WIDTH-1:0];
		else if(apb_penable && apb_pwrite && fifo_addr_sel) 			fifo_addr <= #1	apb_pwdata[ADDR_WIDTH-1:0];
	end
	
	//fifo_addr as assign
//	assign fifo_addr = (!reset_n)                               	? {ADDR_WIDTH{1'b0}} :
//					   (pc_fifo_read)                            	? pc_fifo_addr[ADDR_WIDTH-1:0] :
//					   (dctc_fifo_read)                            	? dctc_fifo_addr[ADDR_WIDTH-1:0] :
//					   (apb_penable && apb_pwrite && fifo_addr_sel) ? apb_pwdata[ADDR_WIDTH-1:0] :
//																	fifo_addr; // default case maintains the value

	//fifo_data_reg
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            									fifo_data_reg <= #1 {DATA_WIDTH{1'b0}};
		else if (apb_penable && apb_pwrite && fifo_data_read)    	fifo_data_reg <= #1 apb_pwdata[DATA_WIDTH-1:0];  
	end

	
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	 	    pc_fifo_data <= #1 {DATA_WIDTH{1'b0}};
		else if (fifo_data_read_rise_d)     pc_fifo_data <= #1 fifo_data_out;
	end
	
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	 	    dctc_fifo_data <= #1 {DATA_WIDTH{1'b0}};
		else if (fifo_data_read_rise_d)     dctc_fifo_data <= #1 fifo_data_out;
	end
////////////

		
////// mcmc
	
	// LUT memory instantiation
	spram2048x72_cb lut_mcmc (
		.A(lut_addr),
		.CEB(!apb_clk),
		.WEB(!lut_we),
		.OEB(!lut_oe),
		.CSB(!lut_cs),
		.IO(lut_data_io)
	);
	
	assign lut_data_io = lut_we ? mcmc_data_reg : 72'bz;

	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	mcmc_lut_read_d <= #1 1'b0;
		else 						mcmc_lut_read_d <= #1 mcmc_lut_read; 
	end

	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	mcmc_data_read_rise_d_1 <= #1 1'b0;
		else 						mcmc_data_read_rise_d_1 <= #1 mcmc_data_read_rise_1; 
	end
	
	
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	mcmc_data_read_rise_d_2 <= #1 1'b0;
		else 						mcmc_data_read_rise_d_2 <= #1 mcmc_data_read_rise_2; 
	end
	
	
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	mcmc_data_read_rise_d_3 <= #1 1'b0;
		else 						mcmc_data_read_rise_d_3 <= #1 mcmc_data_read_rise_3; 
	end

	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	mcmc_data_read_d_1 <= #1 1'b0;
		else 						mcmc_data_read_d_1 <= #1 mcmc_data_read_1; 
	end
	
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	mcmc_data_read_d_2 <= #1 1'b0;
		else 						mcmc_data_read_d_2 <= #1 mcmc_data_read_2; 
	end
	
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	mcmc_data_read_d_3 <= #1 1'b0;
		else 						mcmc_data_read_d_3 <= #1 mcmc_data_read_3; 
	end
	
	//cs - chip select
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            								lut_cs <= #1 1'b0;
		else if (apb_penable || mcmc_data_read_rise_3)  		lut_cs <= #1 1'b1;
		else 													lut_cs <= #1 1'b0;
	end

	//we - write enable
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            											lut_we <= #1 1'b0;
		else if (apb_penable && apb_pwrite && mcmc_data_read_rise_3)		lut_we <= #1 1'b1; //write to lut
		else 																lut_we <= #1 1'b0;
	end
	
	//oe - read enable
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            						  					lut_oe <= #1 1'b0;
		else if (mcmc_lut_read)												lut_oe <= #1 1'b1;
		else if ((apb_penable && !apb_pwrite) || mcmc_lut_read_rise)  		lut_oe <= #1 1'b1;
		else 																lut_oe <= #1 1'b0;
	end
	
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            	 	   						mcmc_lut_data <= #1 72'b0;
		else if (mcmc_data_read_rise_3 || mcmc_lut_read)     	mcmc_lut_data <= #1 lut_data_io;
	end
	
	//lut_addr as assign
	assign lut_addr = (!reset_n)                               		? {11'b0} :
					   (mcmc_lut_read)                            	? mcmc_lut_addr[10:0] :
					   (apb_penable && apb_pwrite && mcmc_addr_sel) ? apb_pwdata[10:0] :
					   												  lut_addr; // default case maintains the value
	
	//mcmc_data_reg_1
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            									mcmc_data_reg_1 <= #1 {DATA_WIDTH{1'b0}};
		else if (apb_penable && apb_pwrite && mcmc_data_read_1)   	mcmc_data_reg_1 <= #1 apb_pwdata; //write to mcmc data
		else if (mcmc_data_read_rise_d_3)  							mcmc_data_reg_1 <= #1 mcmc_lut_data[71:64]; // retain mcmc data
	end
	
	//mcmc_data_reg_2
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            									mcmc_data_reg_2 <= #1 {DATA_WIDTH{1'b0}};
		else if (apb_penable && apb_pwrite && mcmc_data_read_2)   	mcmc_data_reg_2 <= #1 apb_pwdata; //write to mcmc data
		else if (mcmc_data_read_rise_d_3)  							mcmc_data_reg_2 <= #1 mcmc_lut_data[63:32]; // retain mcmc data
	end
	
	//mcmc_data_reg_3
	always_ff @(posedge apb_clk or negedge reset_n) begin
		if (!reset_n)            									mcmc_data_reg_3 <= #1 {DATA_WIDTH{1'b0}};
		else if (apb_penable && apb_pwrite && mcmc_data_read_3) 	mcmc_data_reg_3 <= #1 apb_pwdata; //write to mcmc data
		else if (mcmc_data_read_rise_d_3)  							mcmc_data_reg_3 <= #1 mcmc_lut_data[31:0]; // retain mcmc data
	end
	
	assign mcmc_data_reg = {mcmc_data_reg_1[7:0], mcmc_data_reg_2, mcmc_data_reg_3};

	
endmodule	
