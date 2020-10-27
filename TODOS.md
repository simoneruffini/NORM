TODOS:
- change `NVME_FRAMEWORK_PACKAGE` to `NVMEF_PACKAGE`
- fix bug vol_cntr1_pa_val for fsm_nv_reg_db
- fix bug 38 on fsm_nv_reg_tb
- overhaul project packages
- unify projects names and folders
- use this [program](https://github.com/jeremiah-c-leary/vhdl-style-guide) to unify the code base (it must be configured properly)
- set scripts:
    - __[ok]__: create `/script` folder
    - create `generate_project.tcl` that will generate the whole project using the below scripts crated with `generate_scripts.tcl` 
    - create `README.md` inside it
    - generate tcl scripts for:
        - `write_proj_tcl`: see [this link](https://vhdlwhiz.com/jenkins-for-fpga/#vivado-gui-projects-in-batch-mode)
        - `write_ip_tcl [get_ips]`: see [Tcl Command Reference](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2019_2/ug835-vivado-tcl-commands.pdf) 
        - `write_xdc`: see above     
    - create `generate_scripts.tcl`: the scritpts differentiate from when they need to be generated during project and when they are run for project generation
- __[ok]__ write characterization for the two types of model for each fsm_nv_reg
- __[ok]__: python program to automate characterization for task based backup
- __[ok]__: add power_approximation to project by using the states of `fsm_nv_reg` this could be used in charachterization process later
- __[ok]__: move `FRAM_MAX_DELAY_NS` from `test_architecture_package.vhd` to `GLOBAL_SETTINGS.vhd`
- __[ok]__: rename `GLOBAL_SETTINGS.vhd` -> `NVME_FRAMEWORK_PACKAGE.vhd`
- __[ok]__: rename `TEST_MODULE_PACKAGE.vhd` -> `TEST_ARCHITECTURE_PACKAGE.vhd`
- __[ok]__: rename `vol_cntr` to `vol_arc` (volatile architecture) and keep only the counters with the previous name `vol_cntr`
- __[ok]__: serach for framework in overleaf and substiture where needed \nvmef
- __[ok]__: change `NVA_EMULATOR` folder with `/vivado`
- __[ok]__: add erasing process to vol_cntr during power_off time:  
    After a power failure the contents of the V_REG will remain as it is a BRAM in a powerd FPGA.
    It is the task of the developer to ensure this values are not accessed because in theory they are not available (as a real system would lose them)
- __[ok]__: check that the first request to `nv_reg` is useless (tweak `VAR_CNT_INIT_VAL` or else) and the `V_REG` shall not save it so keep `data_rec_recovered_addr/offset` steady. Or at least make that the first request to `NV_REG` is good because the moment that `data_rec_busy` goes up we have a non requested pulse on `var_cntr` that changes it's value and so `data_rec_nv_reg_addr` (the protocol is violated).
- __[ok]__: when we end the recovery process the ouptus for the `V_REG`must remain steady till we exit `do_operation_s` form `fsm_nv_reg` so that the `V_REG` will not read wrong data
- __[ok]__: capture the output data from `nv_reg` using the protocol definitions: capture when `nv_reg_busy` is off
- __[ok]__: Refactor `bram_addr_width_bit` to `v_reg_addr_width_bit`
- __[ok]__: Refactor vol_cntr states (recovery and loading) to have meaning because now they are flipped wrt fsm_nvreg causing confusion (ex: copy data_save and data_rec naming of fsm_nvreg to vol_cntr_fsm)
- __[ok]__: Refactor variable counter to var_counter
- __[ok]__: delete multiple adder
- __[ok]__: Refactor adder to vol_cntr in all instances (in vol_cntr.vhd search for add1)
- __[ok]__: Refactor `fsm_status` to `fsm_nv_reg_state`
- __[ok]__: Refactor `fsm_nv_reg_status` to `fsm_nv_reg_state_internal`
- __[ok]__: Refactor `status` and `status_sig` to `fsm_state` and `fsm_state_sig`