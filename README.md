# Non-volatile Memory Emulator

Non-volatile memORy eMulator (NORM) is a framework used to emulate  any  intermittent  computing  system  based on high performance non-volatile  memories as the feature comoponent.  
NORM  can  be  used  to  debug and perform functional verification of non-volatile computing logic. Moreover, NORM can be  integrated into a working intermittent computing system in place of a  yet-to-be-built non-volatile  computing  logic  so  the  whole  system  can  be tested.

---
**This branch contains only the stripped down version of NORM**
**Use this as a library in your project**

## Repository Structure
```
NORM
├── prescaler.vhd               # Clock prescaler
├── counter.vhd                 # Simple counter
├── var_cnt.vhd                 # Variable endpoint counter
├── power_approximation.vhd     # Energy approximator
├── nv_mem.vhd                  # Non volatile memory (variable size dual port RAM)
├── nv_mem_emu.vhd              # Non volatile memory emulator
├── i_emu.vhd                   # Intermittency emulator
├── instant_pwr_calc.vhd        # Energy calculator
├── NORM_PKG.vhd                # NORM package
└── README.md
```