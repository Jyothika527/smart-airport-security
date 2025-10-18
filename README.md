# Smart Airport Security Logic System 

A modular digital logic system designed to streamline passenger ID generation and priority-based token dispatch in smart airport environments. Built using Verilog and integrated in Vivado with custom IP blocks.

##  Project Overview

This project simulates a secure and efficient logic system for airport entry management. It includes:

- **ID Generator**: Produces unique 8-bit IDs using clock and reset signals.
- **Priority Checker**: Evaluates passenger priority based on input levels and selection logic.
- **MUX & LFSR Modules**: Custom-built for signal routing and pseudo-random ID generation.
- **FSM Controller**: Manages system states for token dispatch and validation.

## Architecture

Modules are instantiated and interconnected in Vivado using IP Integrator. RTL schematics and block diagrams are generated post-synthesis for verification and documentation.
clk ──▶ id_generator ──▶ id[7:0] priority_checker ◀── priority_in[2:0], sel[1:0] ──▶ priority_out

All modules are instantiated and interconnected in Vivado using IP Integrator. RTL schematics and block diagrams are generated post-synthesis for verification and documentation.

---

##  Directory Structure
├── src/                  # Verilog modules │   ├── id_generator.v │   ├── priority_checker.v │   ├── mux.v │   └── lfsr.v ├── vivado_project/       # Vivado block design and IP integration ├── docs/                 # Overleaf report assets and diagrams ├── slides/               # PowerPoint presentation and visuals └── README.md

---

##  Tools Used

- **Vivado 2023.2** – IP packaging, synthesis, and schematic generation  
- **Overleaf** – Technical documentation and presentation  
- **GitHub** – Version control and collaboration  
- **ModelSim** *(optional)* – Simulation and waveform analysis

---

##  References

- Pong P. Chu – *FPGA Prototyping by VHDL Examples*  
- Steve Kilts – *Advanced FPGA Design*  
- IJIRCST – *Smart Airport Architecture Using IoT*  
- [Jyothika527/smart-airport-security](https://github.com/Jyothika527/smart-airport-security)

---

##  Status

- ✅ RTL modules complete  
- ✅ Custom IPs packaged and integrated  
- ✅ Block diagram and RTL schematic generated  
- ✅ Overleaf report and slides in final formatting  
- ✅ Final simulation and waveform capture in progress


---

## 👩‍💻 Author

**Jyothika T**  
Second-year Electronics Engineering student at Model Engineering College  
Specializing in VLSI Design and Technology | Passionate about modular logic, simulation, and presentation design

---

## 📄 License

This project is for academic and educational use only.  
© 2025 Jyothika T. All rights reserved.
