# Non-volatile Memory Emulator

Non-volatile memORy eMulator (NORM) is a framework used to emulate  any  intermittent  computing  system  based on high performance non-volatile  memories as the feature comoponent.  
NORM  can  be  used  to  debug and perform functional verification of non-volatile computing logic. Moreover, NORM can be  integrated into a working intermittent computing system in place of a  yet-to-be-built non-volatile  computing  logic  so  the  whole  system  can  be tested.

---
**This branch contains only the stripped down version of NORM**
**Use this as a library in your project**

## Repository Structure
```
NORM
├── CNT.vhd           # Simple counter
├── DUAL_PRT_RAM.vhd  # Dual port ram
├── EN_APRX.vhd       # Energy approximator 
├── EN_CALC.vhd       # Energy calculator
├── INT_EMU.vhd       # Intermittency emulator
├── NORM_PKG.vhd      # NORM package
├── NV_MEM_EMU.vhd    # Non volatile memory emulator 
├── NV_MEM.vhd        # Non volatile memory (modified DUAL_PRT_RAM)
└── README.md
```









