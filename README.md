Real-Time Seizure Detection Accelerator

This project implements an accelerator for a real-time seizure detection system using ML algorithms as GMM (Gausian Mixture Model) and MCMC (Monte Carlo Markov Chain), as a fully pipelined, hardware-accelerated design for ASIC/FPGA. It processes EEG signals to detect seizure events with low latency and high reliability.

Modules Included:

<img width="1646" height="510" alt="image" src="https://github.com/user-attachments/assets/5f97ec40-7429-43cc-aa68-2d7b2c17c8f5" />


* **Seizure Regfile** – AMBA-APB controlled interface including 2 RAMs for writing and reading EEG data and managing system flow.
  
* **Parameter Calculation** – Computes real-time mean and standard deviation for incoming EEG signals.
  <img width="1720" height="730" alt="image" src="https://github.com/user-attachments/assets/afa17d39-23f3-47d5-8165-5209e9c7fda9" />

* **MCMC Sample Generator** – LUT-based generator producing probabilistic EEG samples using precomputed distributions stored in SPRAM.
  <img width="1770" height="657" alt="image" src="https://github.com/user-attachments/assets/57018d13-ea40-42ee-a5e4-38f6daaf1979" />

* **Distance & Threshold Comparator** – Compares real samples with generated samples and raises a seizure prediction signal based on configurable thresholds.
  <img width="1858" height="526" alt="image" src="https://github.com/user-attachments/assets/5b0e93d4-d3dc-41da-83e1-811989716437" />


Features:

* Scalable and modular SystemVerilog design.
* APB interface for control and configurability.
* Low-latency decision making.
* Synthesis and layout completed using Synopsys tools.
* Verified with waveform simulations and synthesis area, power and timing reports.

Contents:

* `rtl/` – SystemVerilog modules for all components
* `tb/` – Testbenches for simulation and verification
* `scripts/` – Synthesis and layout scripts (Design Vision)
* `doc/` – Project report, project presentation



