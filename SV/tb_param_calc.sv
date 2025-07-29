/*------------------------------------------------------------------------------
 * File          : tb_param_calc.sv
 * Project       : RTL
 * Author        : epamof
 * Creation date : Dec 11, 2024
 * Description   :
 *------------------------------------------------------------------------------*/

module tb_param_calc #() ();
// Parameters
parameter DATA_WIDTH = 18;
parameter ADDR_WIDTH = 8;

	// Inputs
	logic clk;
	logic reset_n;
	logic start;
	logic [DATA_WIDTH-1:0] pc_fifo_data;
	
	//Outputs
	logic [ADDR_WIDTH-1:0] pc_fifo_addr;
	logic pc_fifo_read;
	logic [17:0] mean_pos;
	logic [18:0] std_pos;
	logic [17:0] mean_neg;
	logic [18:0] std_neg;
	logic param_calc_finish;
	
// Instantiate the mean_calc module
param_calc uut (
  .clk(clk),
  .reset_n(reset_n),
  .start(start),
  .pc_fifo_data(pc_fifo_data),
  .pc_fifo_addr(pc_fifo_addr),
  .pc_fifo_read(pc_fifo_read),
  .mean_pos(mean_pos),
  .std_pos(std_pos),
  .mean_neg(mean_neg),
  .std_neg(std_neg),
  .param_calc_finish(param_calc_finish)
);

// Clock generation
always #5 clk = ~clk;

// Stimulus process
initial begin
  // Initialize inputs
  clk = 0;
  reset_n = 0;
  start = 0;
  pc_fifo_data = 0;

  // Reset the DUT
  #10 reset_n = 1;



  #5 start = 1; 
  #10 start = 0; 
  #40 pc_fifo_data = 18'b000000100000000000; // 1  EEG signal     0 00000 1000 0000 0000 +0.5 || 800
  #40 pc_fifo_data = 18'b100010000000000000; // 2  EEG signal     1 00010 0000 0000 0000 -2 || 2_2000
  #40 pc_fifo_data = 18'b000000010000000000; // 3  EEG signal     0 00000 0100 0000 0000 +0.25 || 400
  #40 pc_fifo_data = 18'b101000100000000000; // 4  EEG signal     1 01000 1000 0000 0000  -8.5 || 2_8800
  #40 pc_fifo_data = 18'b000000100000000000; // 5  EEG signal     0 00000 1000 0000 0000 +0.5 || 800
  #40 pc_fifo_data = 18'b100010000000000000; // 6  EEG signal     1 00010 0000 0000 0000 -2 || 2_2000
  #40 pc_fifo_data = 18'b000000010000000000; // 7  EEG signal     0 00000 0100 0000 0000 +0.25 || 400
  #40 pc_fifo_data = 18'b101000100000000000; // 8  EEG signal     1 01000 1000 0000 0000  -8.5 || 2_8800
  
  #40 pc_fifo_data = 18'b000011100000000000; // 9  EEG signal  	  0 00011 1000 0000 0000 +3.5 || 3800
  #40 pc_fifo_data = 18'b100010110000000000; // 10 EEG signal     1 00010 1100 0000 0000 -2.75 || 2_2c00
  #40 pc_fifo_data = 18'b010000010000000000; // 11 EEG signal     0 10000 0100 0000 0000 +16.25 || 1_0400
  #40 pc_fifo_data = 18'b101000110000000000; // 12 EEG signal     1 01000 1100 0000 0000  -8.75 || 2_8c00
  #40 pc_fifo_data = 18'b000000001000000000; // 13 EEG signal     0 00000 0010 0000 0000 +0.125 || 200
  #40 pc_fifo_data = 18'b100010000000000000; // 14 EEG signal     1 00010 0000 0000 0000 -2 || 2_2000
  #40 pc_fifo_data = 18'b000001010000000000; // 15 EEG signal     0 00001 0100 0000 0000 +1.25 || 1400
  #40 pc_fifo_data = 18'b101000100000000000; // 16 EEG signal     1 01000 1000 0000 0000  -8.5 || 2_8800

	//from here std check
		  
  #10
  #40 pc_fifo_data = 18'b000000100000000000; // 1  EEG signal     0 00000 1000 0000 0000  +0.5 || 800
  #40 pc_fifo_data = 18'b100010000000000000; // 2  EEG signal     1 00010 0000 0000 0000    -2 || 2_2000
  #40 pc_fifo_data = 18'b000000010000000000; // 3  EEG signal     0 00000 0100 0000 0000 +0.25 || 400
  #40 pc_fifo_data = 18'b101000100000000000; // 4  EEG signal     1 01000 1000 0000 0000  -8.5 || 2_8800
  #40 pc_fifo_data = 18'b000000100000000000; // 5  EEG signal     0 00000 1000 0000 0000  +0.5 || 800
  #40 pc_fifo_data = 18'b100010000000000000; // 6  EEG signal     1 00010 0000 0000 0000    -2 || 2_2000
  #40 pc_fifo_data = 18'b000000010000000000; // 7  EEG signal     0 00000 0100 0000 0000 +0.25 || 400
  #40 pc_fifo_data = 18'b101000100000000000; // 8  EEG signal     1 01000 1000 0000 0000  -8.5 || 2_8800
  
  #40 pc_fifo_data = 18'b000011100000000000; // 9  EEG signal  	  0 00011 1000 0000 0000  +3.5 || 3800
  #40 pc_fifo_data = 18'b100010110000000000; // 10 EEG signal     1 00010 1100 0000 0000 -2.75 || 2_2c00
  #40 pc_fifo_data = 18'b010000010000000000; // 11 EEG signal     0 10000 0100 0000 0000 +16.25 || 1_0400
  #40 pc_fifo_data = 18'b101000110000000000; // 12 EEG signal     1 01000 1100 0000 0000  -8.75 || 2_8c00
  #40 pc_fifo_data = 18'b000000001000000000; // 13 EEG signal     0 00000 0010 0000 0000 +0.125 || 200
  #40 pc_fifo_data = 18'b100010000000000000; // 14 EEG signal     1 00010 0000 0000 0000 -2 || 2_2000
  #40 pc_fifo_data = 18'b000001010000000000; // 15 EEG signal     0 00001 0100 0000 0000 +1.25 || 1400
  #40 pc_fifo_data = 18'b101000100000000000; // 16 EEG signal     1 01000 1000 0000 0000  -8.5 || 2_8800

  #50
		  	  
	//new - first 16 - mean works
	//mean_pos = 2.82 = 181/64 = 2 + 53/64 = 2 + 0.5 + 0.25 + 1/16 + 1/64 = 0 00010 1101	0100 0000
	//mean_neg = -5.375 = -(5+3/8) = 0 00101 0110 0000 0000
	//expected std_pos = 5.1784323988419
	//expected std_neg = 3.1966779631361

    
  #500 $stop;
  // Wait for division to complete
  wait(param_calc_finish);
  
  // Check the output
  $display("Mean Pos: %h", mean_pos);
  $display("Mean Neg: %h", mean_neg);
  
  $display("STD Pos: %h", std_pos);
  $display("STD Neg: %h", std_neg);
  
  // Finish simulation
  #30 $stop;
end


endmodule