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
<img width="475" height="507" alt="image" src="https://github.com/user-attachments/assets/d1c3a177-0ee6-4683-95c8-1a2377b4a251" />


```text
Test
 └── Env
      └── Agent
           ├── Sequencer
           ├── Driver
           └── Monitor
                    │
                    ▼
              Scoreboard
```

## Directory Structure

```text
uvm_environment_for_adder
├── rtl/
│   └── adder.sv
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
