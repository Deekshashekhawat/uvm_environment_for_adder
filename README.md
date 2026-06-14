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

- Constrained-random stimulus generation
- Driver–Sequencer communication
- Monitor-based transaction collection
- Scoreboard result checking
- Functional coverage with cross coverage
- UVM reporting and factory registration
- Virtual interface configuration using `uvm_config_db`

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
```

## Tools

- SystemVerilog
- UVM 1.2
- QuestaSim

## Author

**Deeksha Shekhawat**
