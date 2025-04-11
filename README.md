### RISC-V Single-Cycle Processor

Welcome to the repository for the **RISC-V Single-Cycle Processor**, a verified implementation written in SystemVerilog. This project supports core instruction types from the RV32I base ISA, including **R-type**, **I-type**, **SW**, **LW**, and **BEQ** instructions. It is designed for simplicity, educational purposes, and formal correctness.

---

## **Features**

### **Supported Instructions**
- **R-type**: Arithmetic (e.g., `add`, `sub`).
- **I-type**: Immediate-based operations (e.g., `addi`, `andi`).
- **SW (Store Word)**: Writes data from registers to memory.
- **LW (Load Word)**: Reads data from memory into registers.
- **BEQ (Branch Equal)**: Conditional branching based on register comparison.

### **Design Highlights**
- **Single-Cycle Execution**: All instructions are executed in a single clock cycle.
- **Modular Components**:
  - Program Counter (PC)
  - Instruction Memory
  - Register File
  - ALU (Arithmetic Logic Unit)
  - Control Unit
  - Data Memory
- Verified using formal methods to ensure correctness of control signals and data paths.
- Fully synthesizable SystemVerilog code.

---


## **Getting Started**

### Prerequisites
- A SystemVerilog simulator (e.g., ModelSim, VCS, or XSIM).
- Familiarity with RISC-V ISA and basic computer architecture concepts.

### Running the Simulation
1. Clone the repository:
   ```bash
   git clone https://github.com/.git
   cd 
   ```
2. Compile the design files and testbench:
   ```bash
   vcs -full64 src/*.sv testbench/tb_processor.sv -o simv
   ./simv
   ```

---

## **Acknowledgments**
This project was inspired by the simplicity of RISC-V ISA and aims to provide a foundational understanding of processor design for students and enthusiasts.

For questions or feedback, feel free to open an issue or contact me directly!

--- 
