RISC-V Single-Cycle Processor Implementation
This repository contains a complete implementation of a RISC-V single-cycle processor written in SystemVerilog. The design supports key instruction types, including R-type, I-type, SW, LW, and BEQ instructions, adhering to the RV32I base instruction set architecture (ISA). The processor has been formally verified to ensure correctness and reliability.

Features
Single-Cycle Execution: Each instruction is executed in one clock cycle, making the design simple and ideal for educational purposes.

Supported Instructions:

R-type: Arithmetic and logical operations (e.g., add, sub, and, or).

I-type: Immediate-based operations (e.g., addi, andi).

SW (Store Word): Writes data from registers to memory.

LW (Load Word): Reads data from memory into registers.

BEQ (Branch Equal): Conditional branching based on register comparison.

Core Components:

Program Counter (PC): Tracks the current instruction address.

Instruction Memory: Stores machine instructions for execution.

Register File: Contains 32 general-purpose registers (x0 to x31), with x0 hardwired to zero.

ALU (Arithmetic Logic Unit): Performs arithmetic and logical operations based on control signals.

Control Unit: Decodes opcodes and generates control signals for data flow coordination.

Data Memory: Handles load/store operations during memory access instructions.

Design Highlights
Fully synthesizable SystemVerilog code.

Modular design for ease of understanding and extensibility.

Verified to ensure correctness of control signals and data paths.

Why RISC-V?
The RISC-V architecture is open-source, modular, and extensible, making it ideal for research, learning, and custom processor development. Its simplicity allows for efficient single-cycle designs while maintaining scalability for more advanced implementations.

Applications
This processor design can be used as:

A learning tool for computer architecture students.

A base for further development into pipelined or multi-cycle processors.

An embedded system processor targeting low-cost applications.
