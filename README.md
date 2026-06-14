# UVM Verification Environment for 4-Bit Adder

## Overview

This project implements a UVM-based verification environment for a synchronous 4-bit adder. The DUT adds two 4-bit operands and a carry input to generate a 5-bit sum output.

## Verification Components

- Transaction
- Sequence
- Sequencer
- Driver
- Monitor
- Scoreboard
- Agent
- Environment
- Test

## Features

## Features

- Constrained-random stimulus generation
- UVM factory registration and object/component creation
- TLM-based communication between monitor-scoreboard and  Driver–Sequencer
- Virtual interface configuration using `uvm_config_db`
- Automated scoreboard-based checking
- UVM reporting (`uvm_info`, `uvm_error`, `uvm_fatal`)

## DUT Functionality

```systemverilog
sum <= a + b + c;
```

## Testbench Architecture
<img width="945" height="1024" alt="image" src="https://github.com/user-attachments/assets/7a3d46a8-e50c-4365-9979-0bc88c989bd6" />




## Directory Structure

```text
uvm_environment_for_adder
├── rtl/
│   ├── adder.sv
│   └── top.sv
├── tb/
│   ├── transaction.sv
│   ├── sequence.sv
│   ├── sequencer.sv
│   ├── driver.sv
│   ├── monitor.sv
│   ├── scoreboard.sv
│   ├── agent.sv
│   ├── env.sv
│   ├── test.sv
│   ├── myfiles.sv
│   └── top.sv
└── README.md
└── .gitignore
```
## Simulation Results

### Simulation

<img width="1265" height="610" alt="image" src="https://github.com/user-attachments/assets/b98911c1-385b-4707-abce-21540ecb89fb" />


### transcript
<img width="1400" height="1005" alt="image" src="https://github.com/user-attachments/assets/0ca61833-dcbd-4d10-ad89-c5affbdf39a1" />

<img width="1024" height="734" alt="image" src="https://github.com/user-attachments/assets/5c5af3fd-ebb9-49c1-b550-510d16b2b7f9" />
used Ai to highlight the words "Matched"

## Tools

- SystemVerilog
- UVM 1.2
- QuestaSim

## Author

**Deeksha Shekhawat**
