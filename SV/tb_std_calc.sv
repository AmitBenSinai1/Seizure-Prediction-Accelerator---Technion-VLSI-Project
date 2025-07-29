module tb_std_calc;

// Parameters
parameter DATA_WIDTH = 18;
parameter ADDR_WIDTH = 8;

// Inputs
logic clk;
logic reset_n;
logic start;
logic [DATA_WIDTH-1:0] eeg;
logic [DATA_WIDTH-1:0] mean;
logic [ADDR_WIDTH-1:0] count;
logic complete_acc;

// Outputs
//logic complete_mult;
//logic complete_div;
logic complete_sqrt;
logic [18:0] std_dev;

//logic [17:0] eeg_d, mean_d;
//logic [35:0] product;
//logic [23:0] square;         // without pos/neg bit (Q12.12)


// Instantiate the std_calc module
std_calc uut (
  .clk(clk),
  .reset_n(reset_n),
  .start(start),
  .eeg(eeg),
  .mean(mean),
  .count(count),
  .complete_acc(complete_acc),
  .complete_sqrt(complete_sqrt),
  .std_dev(std_dev)
);

// Clock generation
always #5 clk = ~clk;

// Stimulus process
initial begin
  // Initialize inputs
  clk = 0;
  reset_n = 0;
  start = 0;
  eeg = 0;
  mean = 18'b000010010000000000; // 2.25
  complete_acc = 1'b0;
  
  count = 8'b00000100;   // 4
//  eeg_d = 0;
//  mean_d = 0;
//  product = 0;
//  square = 0;
  

  // Reset the DUT
  #5 reset_n = 1;

  // Apply stimulus
  #40 start = 1; eeg = 18'b000000100000000000; // first EEG signal  Q1.5.12     00 0000 1000 0000 0000 +0.5
  #40 start = 0;
  #40 start = 1; eeg = 18'b000010000000000000; // second EEG signal      0 00010 0000 0000 0000 +2
  #40 start = 0;
  #40 start = 1; eeg = 18'b000000010000000000; // third EEG signal       0 00000 0100 0000 0000 +0.25
  #40 start = 0;
  #40 start = 1; eeg = 18'b001000100000000000; // fourth EEG signal     0 01000 1000 0000 0000  +8.5
  #40 start = 0;
  #40 complete_acc = 1;
  #40 complete_acc = 0;
  
  //std expected = 3.351
  
  //old - 3 bits after point
  // (eeg-min)^2 = 3.0625, 0.0625, 4, 39.0625)
  //sum = 46.1875 --- 101110_001100000000
  //truncked = 101110_001000 - 46.125
  //var = truncked/(count-1) = 15.375 = 15+(3/8) = 0000_0000_1111 __ 011
  //quotient =   0000000000000000_11_1101_1000
  
  //new 4 bits after point
  // (eeg-min)^2 = (3.0625, 0.0625, 4, 39.0625)
  //sum = 46.1875 --- 101110_001100000000
  //truncked = 101110_00110000 - 46.1875
  //var = truncked/(count-1) = 15.3958333 = 15+(19/48) = 0000_0000_1111 __ 0110_00000000
  //quotient = 	0000000		  11_1101_1001_01
  //std = 3.9237 ~= Q 11_1111
  
  
  
  // Wait for accumulation to complete
  //this example - checked - try longer one
  wait(complete_acc);
  
  // Wait for multiplication to complete
  //wait(complete_mult);
  
  // Wait for division to complete
  //wait(complete_div);
  
  // Wait for square root calculation to complete
  wait(complete_sqrt);
  
  
  // Check the output
  $display("Standard Deviation: %h", std_dev);

  // Finish simulation
  #20 $stop;
  

end

endmodule
