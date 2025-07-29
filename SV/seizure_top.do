vlogan -kdb -sverilog -full64 seizure_top.sv seizure_core.sv seizure_tb.sv seizure_regfile.sv global_fsm.sv param_calc.sv mean_calc.sv std_calc.sv dpram256x18_cb.v spram2048x72_cb.v DW_div_seq.v DW_mult_seq.v DW_sqrt_seq.v mcmc.sv dctc.sv
vcs -kdb -debug_access+all -full64 seizure_top.sv seizure_core.sv seizure_regfile.sv param_calc.sv global_fsm.sv mean_calc.sv std_calc.sv dpram256x18_cb.v spram2048x72_cb.v DW_div_seq.v DW_mult_seq.v DW_sqrt_seq.v mcmc.sv dctc.sv
vcs -kdb -sverilog -debug_access+all -full64 seizure_tb
simv -gui
