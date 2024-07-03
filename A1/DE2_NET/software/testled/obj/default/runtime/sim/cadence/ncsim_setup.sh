
# (C) 2001-2024 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2024.07.03.10:23:05

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="system_0_tb"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="D:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/sysid_qsys_0/
mkdir -p ./libraries/cfi_flash_0/
mkdir -p ./libraries/tri_state_bridge_0_pinSharer_0/
mkdir -p ./libraries/tri_state_bridge_0_bridge_0/
mkdir -p ./libraries/cpu_0/
mkdir -p ./libraries/SD_CLK/
mkdir -p ./libraries/SD_DAT/
mkdir -p ./libraries/switch_pio/
mkdir -p ./libraries/button_pio/
mkdir -p ./libraries/lcd_16207_0/
mkdir -p ./libraries/timer_0/
mkdir -p ./libraries/jtag_uart_0/
mkdir -p ./libraries/epcs_controller/
mkdir -p ./libraries/sdram_0/
mkdir -p ./libraries/cfi_flash_0_external_mem_bfm/
mkdir -p ./libraries/tri_state_bridge_0_pinSharer_0_pin_divider/
mkdir -p ./libraries/tri_state_bridge_0_bridge_0_tcb_translator/
mkdir -p ./libraries/sdram_0_my_partner/
mkdir -p ./libraries/system_0_inst_merged_resets_in_reset_bfm/
mkdir -p ./libraries/system_0_inst_clk_50_clk_in_bfm/
mkdir -p ./libraries/system_0_inst/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cycloneii/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_bht_ram.dat ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_bht_ram.hex ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_bht_ram.mif ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_dc_tag_ram.dat ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_dc_tag_ram.hex ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_dc_tag_ram.mif ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_ic_tag_ram.dat ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_ic_tag_ram.hex ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_ic_tag_ram.mif ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_ociram_default_contents.dat ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_ociram_default_contents.hex ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_ociram_default_contents.mif ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_rf_ram_a.dat ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_rf_ram_a.hex ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_rf_ram_a.mif ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_rf_ram_b.dat ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_rf_ram_b.hex ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_rf_ram_b.mif ./
  cp -f C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_epcs_controller_boot_rom.hex ./
  cp -f C:/proj_final/A1/DE2_NET/software/testled/mem_init/hdl_sim/cfi_flash_0.dat ./
  cp -f C:/proj_final/A1/DE2_NET/software/testled/mem_init/hdl_sim/system_0_epcs_controller_boot_rom.dat ./
  cp -f C:/proj_final/A1/DE2_NET/software/testled/mem_init/hdl_sim/sdram_0.dat ./
  cp -f C:/proj_final/A1/DE2_NET/software/testled/mem_init/hdl_sim/system_0_epcs_controller_boot_rom.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera      
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera      
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm         
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm         
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate       
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
  ncvlog -sv  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.vhd"              -work cycloneii   
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_components.vhd"         -work cycloneii   
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_sysid_qsys_0.vho"                                                      -work sysid_qsys_0                               -cdslib ./cds_libs/sysid_qsys_0.cds.lib                              
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cfi_flash_0.vhd"                                                       -work cfi_flash_0                                -cdslib ./cds_libs/cfi_flash_0.cds.lib                               
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_tri_state_bridge_0_pinSharer_0.vhd"                                    -work tri_state_bridge_0_pinSharer_0             -cdslib ./cds_libs/tri_state_bridge_0_pinSharer_0.cds.lib            
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_tri_state_bridge_0_bridge_0.vho"                                       -work tri_state_bridge_0_bridge_0                -cdslib ./cds_libs/tri_state_bridge_0_bridge_0.cds.lib               
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0.vho"                                                             -work cpu_0                                      -cdslib ./cds_libs/cpu_0.cds.lib                                     
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_jtag_debug_module_sysclk.vhd"                                    -work cpu_0                                      -cdslib ./cds_libs/cpu_0.cds.lib                                     
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_jtag_debug_module_tck.vhd"                                       -work cpu_0                                      -cdslib ./cds_libs/cpu_0.cds.lib                                     
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_jtag_debug_module_wrapper.vhd"                                   -work cpu_0                                      -cdslib ./cds_libs/cpu_0.cds.lib                                     
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_mult_cell.vhd"                                                   -work cpu_0                                      -cdslib ./cds_libs/cpu_0.cds.lib                                     
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_oci_test_bench.vhd"                                              -work cpu_0                                      -cdslib ./cds_libs/cpu_0.cds.lib                                     
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_test_bench.vhd"                                                  -work cpu_0                                      -cdslib ./cds_libs/cpu_0.cds.lib                                     
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_SD_CLK.vhd"                                                            -work SD_CLK                                     -cdslib ./cds_libs/SD_CLK.cds.lib                                    
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_SD_DAT.vhd"                                                            -work SD_DAT                                     -cdslib ./cds_libs/SD_DAT.cds.lib                                    
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_switch_pio.vhd"                                                        -work switch_pio                                 -cdslib ./cds_libs/switch_pio.cds.lib                                
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_button_pio.vhd"                                                        -work button_pio                                 -cdslib ./cds_libs/button_pio.cds.lib                                
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_lcd_16207_0.vhd"                                                       -work lcd_16207_0                                -cdslib ./cds_libs/lcd_16207_0.cds.lib                               
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_timer_0.vhd"                                                           -work timer_0                                    -cdslib ./cds_libs/timer_0.cds.lib                                   
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_jtag_uart_0.vhd"                                                       -work jtag_uart_0                                -cdslib ./cds_libs/jtag_uart_0.cds.lib                               
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_epcs_controller.vhd"                                                   -work epcs_controller                            -cdslib ./cds_libs/epcs_controller.cds.lib                           
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_sdram_0.vhd"                                                           -work sdram_0                                    -cdslib ./cds_libs/sdram_0.cds.lib                                   
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_sdram_0_test_component.vhd"                                            -work sdram_0                                    -cdslib ./cds_libs/sdram_0.cds.lib                                   
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_external_memory_bfm_vhdl_pkg.vhd"                                        -work cfi_flash_0_external_mem_bfm               -cdslib ./cds_libs/cfi_flash_0_external_mem_bfm.cds.lib              
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_external_memory_bfm_vhdl.vhd"                                            -work cfi_flash_0_external_mem_bfm               -cdslib ./cds_libs/cfi_flash_0_external_mem_bfm.cds.lib              
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_inout.vhd"                                                               -work tri_state_bridge_0_pinSharer_0_pin_divider -cdslib ./cds_libs/tri_state_bridge_0_pinSharer_0_pin_divider.cds.lib
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_conduit_pin_divider.vhd"                                                 -work tri_state_bridge_0_pinSharer_0_pin_divider -cdslib ./cds_libs/tri_state_bridge_0_pinSharer_0_pin_divider.cds.lib
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_inout.vhd"                                                               -work tri_state_bridge_0_bridge_0_tcb_translator -cdslib ./cds_libs/tri_state_bridge_0_bridge_0_tcb_translator.cds.lib
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_tristate_conduit_bridge_translator.vhd"                                  -work tri_state_bridge_0_bridge_0_tcb_translator -cdslib ./cds_libs/tri_state_bridge_0_bridge_0_tcb_translator.cds.lib
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_sdram_partner_module.vhd"                                                -work sdram_0_my_partner                         -cdslib ./cds_libs/sdram_0_my_partner.cds.lib                        
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_avalon_reset_source.vhd"                                                 -work system_0_inst_merged_resets_in_reset_bfm   -cdslib ./cds_libs/system_0_inst_merged_resets_in_reset_bfm.cds.lib  
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/altera_avalon_clock_source.vhd"                                                 -work system_0_inst_clk_50_clk_in_bfm            -cdslib ./cds_libs/system_0_inst_clk_50_clk_in_bfm.cds.lib           
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0.vhd"                                                                   -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_jtag_debug_module_translator_avalon_universal_slave_0_agent.vhd" -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_sdram_0_s1_translator_avalon_universal_slave_0_agent.vhd"              -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cfi_flash_0_uas_translator_avalon_universal_slave_0_agent.vhd"         -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_width_adapter.vhd"                                                     -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_width_adapter_001.vhd"                                                 -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_width_adapter_002.vhd"                                                 -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_width_adapter_003.vhd"                                                 -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_instruction_master_translator.vhd"                               -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_data_master_translator.vhd"                                      -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_burst_adapter.vhd"                                                     -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_burst_adapter_001.vhd"                                                 -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cpu_0_jtag_debug_module_translator.vhd"                                -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_sdram_0_s1_translator.vhd"                                             -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_epcs_controller_epcs_control_port_translator.vhd"                      -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_cfi_flash_0_uas_translator.vhd"                                        -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_sysid_qsys_0_control_slave_translator.vhd"                             -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_jtag_uart_0_avalon_jtag_slave_translator.vhd"                          -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_timer_0_s1_translator.vhd"                                             -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_lcd_16207_0_control_slave_translator.vhd"                              -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_button_pio_s1_translator.vhd"                                          -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_switch_pio_s1_translator.vhd"                                          -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_dm9000a_avalon_slave_0_translator.vhd"                                 -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_seg7_display_avalon_slave_0_translator.vhd"                            -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_sram_0_avalon_slave_0_translator.vhd"                                  -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_a1_0_avalon_slave_0_translator.vhd"                                    -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_rst_controller.vhd"                                                    -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/submodules/system_0_rst_controller_002.vhd"                                                -work system_0_inst                              -cdslib ./cds_libs/system_0_inst.cds.lib                             
  ncvhdl -v93 "C:/proj_final/A1/DE2_NET/system_0/testbench/system_0_tb/simulation/system_0_tb.vhd"                                                                                                                                                                                                 
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen -relax $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
