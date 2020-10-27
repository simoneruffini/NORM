# Non Volatile Memory Emulation Framework for FPGAs (NVMEF-FPGA)
Emulating Intermittent Non-Volatile Computing Systems Using Off-the-shelf FPGAs

This codebase is not fully git-friendly so a lot of blobs and binaries come with it. Most of them are useless if you are just interested in the framework by itself.

## What this repo contains

This repository (at the time of writing) contains the project report in `/doc`, the non volatile memory emulation framework in `/src` and a test architecture that demonstrates the use of such framework (same directory).  
The `/test` folder contains testbench for each entity.  
The `/scripts` folder principally contains scripts for documentation generation. 

## How to run this framework
Contact us;). Just kidding.

This project was created on vivado version 2020.1 and in theory just by oppening the `xpr` file in `/vivado/NVA_EMULATOR.xpr` the project should open.

If you are using a different toolchain or a different Vivado verison some incompatibility can arise:
1) Only import the files in `/src` and `/test`
2) IP's will not run or will require downgrade. (see each entity section in the report for a workaround) 

## Where's the damn documentation
At the time of writing this section, the codebase is in pre alpha, (read it like: the code works but there are no in code documentation). This beacuse the project started as an assignment for a uninversity course. Of course there is documentation and it is written very precisely and **extensively**, just in pdf format as a project report, so expect to read a lot of text. We know this is an issue (look in the issue/bug tracker).

So, if you want the long documentation, look at `/doc/Report_NonVolatileMemoryEmulationFramework.pdf`.

## Todos
This project needs a little bit of open source care, this means adding in code documentation (maybe a wiki too), remove blobs and make the project scripts for vivado.    
**If you want to help check the issues and file pull requests!!**
