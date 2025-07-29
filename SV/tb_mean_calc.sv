module tb_mean_calc;

// Parameters
parameter DATA_WIDTH = 18;
parameter ADDR_WIDTH = 8;

// Inputs
logic clk;
logic reset_n;
logic start;
logic [DATA_WIDTH-1:0] eeg;
logic start_div;

// Outputs
logic complete_div;
logic [DATA_WIDTH-1:0] mean;
logic [ADDR_WIDTH-1:0] count;

// Instantiate the mean_calc module
mean_calc uut (
  .clk(clk),
  .reset_n(reset_n),
  .start(start),
  .eeg(eeg),
  .start_div(start_div),
  .complete_div(complete_div),
  .mean(mean),
  .count(count)
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
  start_div = 0;

  // Reset the DUT
  #5 reset_n = 1;

  // Apply stimulus
  #10 start = 1; eeg = 18'b000000100000000000; // first EEG signal  Q1.5.12     0 00000 1000 0000 0000 +0.5
  #10 start = 0;
  #10 start = 1; eeg = 18'b000010000000000000; // second EEG signal      0 00010 0000 0000 0000 +2
  #10 start = 0;
  #10 start = 1; eeg = 18'b000000010000000000; // third EEG signal       0 00000 0100 0000 0000 +0.25
  #10 start = 0;
  #10 start = 1; eeg = 18'b001000100000000000; // fourth EEG signal     0 01000 1000 0000 0000  +8.5
  #10 start = 0;

  // Start division after accumulating all EEG signals
  @(posedge clk);
		  #1 start_div = 1;
  @(posedge clk);
		  #1 start_div = 0;
    // Wait for division to complete
  wait(complete_div);
  #100
  // Check the output
  $display("Mean: %h", mean);
  $display("Count: %d", count);

  // Finish simulation
  #20 $stop;
end

endmodule
