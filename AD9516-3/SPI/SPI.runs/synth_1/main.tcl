# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -id {Shape Builder 18-121}  -string {{CRITICAL WARNING: [Shape Builder 18-121] Failed to get a compatible bel element for instance spi_miso_IBUF_inst of type IBUF.}}  -suppress 
create_project -in_memory -part xcku040-ffva1156-2-e

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir G:/AD9516-3/SPI/SPI.cache/wt [current_project]
set_property parent.project_path G:/AD9516-3/SPI/SPI.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  G:/AD9516-3/AD9516.v
  G:/AD9516-3/FALSE_PLL.v
  G:/AD9516-3/main.v
}
read_xdc G:/AD9516-3/SPI/SPI.srcs/constrs_1/new/main.xdc
set_property used_in_implementation false [get_files G:/AD9516-3/SPI/SPI.srcs/constrs_1/new/main.xdc]

synth_design -top main -part xcku040-ffva1156-2-e
write_checkpoint -noxdef main.dcp
catch { report_utilization -file main_utilization_synth.rpt -pb main_utilization_synth.pb }
