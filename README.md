# Digital IC Design & RTL Verification Portfolio

Welcome to my Digital IC Design portfolio. This repository contains a collection of foundational to intermediate hardware designs implemented in Verilog HDL. The projects are structured to demonstrate a progressive understanding of structural modeling, parametric design, and rigorous RTL verification methodologies.

## 🛠️ Tools & Environments
- **Hardware Description Language:** Verilog HDL
- **Logic Synthesis & Timing Analysis:** Intel Quartus Prime
- **Simulation & Verification:** Icarus Verilog, SystemVerilog-style assertions (Testbench)
- **Waveform Viewer:** GTKWave / EPWave

## 📂 Project Directory

### 1. [Half Adder](half_adder/)
- **Description:** The fundamental building block of arithmetic circuits.
- **Key Concepts:** Procedural combinatorial logic, truth table validation, basic testbench creation.

### 2. [Full Adder](full_adder/)
- **Description:** A standard 1-bit adder accommodating a carry-in bit.
- **Key Concepts:** Hierarchical design (instantiating Half Adders), gate-level structural modeling.

### 3. [Parameterized N-bit Ripple Carry Adder](ripple_carry_adder/)
- **Description:** A scalable RCA utilizing continuous carry-chain logic.
- **Key Concepts:** `generate` loops, parameterized data widths, randomized testbench vectors, critical path / propagation delay analysis.

---
*Each project folder contains its own detailed documentation, RTL schematics, simulation waveforms, and synthesis timing reports.*
