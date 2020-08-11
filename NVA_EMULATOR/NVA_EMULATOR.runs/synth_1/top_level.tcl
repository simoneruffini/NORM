# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.runs/synth_1/top_level.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param chipscope.maxJobs 3
set_msg_config -id {Common 17-41} -limit 10000000
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.xpr} [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo {c:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_vhdl -library xil_defaultlib {
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/GLOBAL_SETTINGS.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/COMMON_PACKAGE.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/TEST_MODULE_PACKAGE.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/counter.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/fsm_nv_reg.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/instant_pwr_calc.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/intermittency_emulator.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/nv_reg.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/nv_reg_emu.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/power_approximation.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/pwr_consumption_val_ROM.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/scaler.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/trace_ROM.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/var_counter.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/vol_cntr.vhd}
  {C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/src/top_level.vhd}
}
read_ip -quiet {{C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci}}
set_property used_in_implementation false [get_files -all {{c:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc}}]

read_ip -quiet {{C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0.xci}}
set_property used_in_implementation false [get_files -all {{c:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_ooc.xdc}}]

read_ip -quiet {{C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1.xci}}
set_property used_in_implementation false [get_files -all {{c:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_ooc.xdc}}]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/constrs_1/new/constraints.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Simone Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/constrs_1/new/constraints.xdc}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top top_level -part xc7z020clg484-1
OPTRACE "synth_design" END { }


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_level.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
