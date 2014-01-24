
# (C) 2001-2013 Altera Corporation. All rights reserved.
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

# ACDS 13.0 156 win32 2013.11.26.15:08:50

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "mac"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "D:/altera/13.0/quartus/"
} 

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                  ./libraries/altera_ver      
vmap       altera_ver       ./libraries/altera_ver      
ensure_lib                  ./libraries/lpm_ver         
vmap       lpm_ver          ./libraries/lpm_ver         
ensure_lib                  ./libraries/sgate_ver       
vmap       sgate_ver        ./libraries/sgate_ver       
ensure_lib                  ./libraries/altera_mf_ver   
vmap       altera_mf_ver    ./libraries/altera_mf_ver   
ensure_lib                  ./libraries/altera_lnsim_ver
vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver
ensure_lib                  ./libraries/cycloneiii_ver  
vmap       cycloneiii_ver   ./libraries/cycloneiii_ver  
ensure_lib           ./libraries/i_tse_mac
vmap       i_tse_mac ./libraries/i_tse_mac

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog +define+SKIP_KEYWORDS_PRAGMA "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiii_atoms.v"  -work cycloneiii_ver  
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_eth_tse_mac.v"                  -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_clk_cntl.v"                 -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_crc328checker.v"            -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_crc328generator.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_crc32ctl8.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_crc32galois8.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_gmii_io.v"                  -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_lb_read_cntl.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_lb_wrt_cntl.v"              -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_hashing.v"                  -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_host_control.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_host_control_small.v"       -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mac_control.v"              -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_register_map.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_register_map_small.v"       -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rx_counter_cntl.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_shared_mac_control.v"       -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_shared_register_map.v"      -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_counter_cntl.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_lfsr_10.v"                  -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_loopback_ff.v"              -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_altshifttaps.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_fifoless_mac_rx.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mac_rx.v"                   -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_fifoless_mac_tx.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mac_tx.v"                   -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_magic_detection.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mdio.v"                     -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mdio_clk_gen.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mdio_cntl.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_top_mdio.v"                 -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mii_rx_if.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mii_tx_if.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_pipeline_base.v"            -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_pipeline_stage.sv"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_dpram_16x32.v"              -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_dpram_8x32.v"               -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_quad_16x32.v"               -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_quad_8x32.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_fifoless_retransmit_cntl.v" -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_retransmit_cntl.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rgmii_in1.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rgmii_in4.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rgmii_module.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rgmii_out1.v"               -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rgmii_out4.v"               -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rx_ff.v"                    -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rx_min_ff.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rx_ff_cntrl.v"              -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rx_ff_cntrl_32.v"           -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rx_ff_cntrl_32_shift16.v"   -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rx_ff_length.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_rx_stat_extract.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_timing_adapter32.v"         -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_timing_adapter8.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_timing_adapter_fifo32.v"    -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_timing_adapter_fifo8.v"     -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_top_1geth.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_top_fifoless_1geth.v"       -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_top_w_fifo.v"               -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_top_w_fifo_10_100_1000.v"   -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_top_wo_fifo.v"              -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_top_wo_fifo_10_100_1000.v"  -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_mac_woff.v"                 -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_top_gen_host.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_ff.v"                    -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_min_ff.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_ff_cntrl.v"              -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_ff_cntrl_32.v"           -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_ff_cntrl_32_shift16.v"   -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_ff_length.v"             -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_ff_read_cntl.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_tx_stat_extract.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_false_path_marker.v"        -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_reset_synchronizer.v"       -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_clock_crosser.v"            -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_a_fifo_13.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_a_fifo_24.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_a_fifo_34.v"                -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_a_fifo_opt_1246.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_a_fifo_opt_14_44.v"         -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_a_fifo_opt_36_10.v"         -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_gray_cnt.v"                 -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_sdpm_altsyncram.v"          -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_altsyncram_dpm_fifo.v"      -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_bin_cnt.v"                  -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_ph_calculator.sv"           -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_sdpm_gen.v"                 -work i_tse_mac
  vlog  "$QSYS_SIMDIR/altera_eth_tse_mac/aldec/altera_tse_dc_fifo.v"                  -work i_tse_mac
  vlog  "$QSYS_SIMDIR/mac.v"                                                                         
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim +access +r  -t ps -L work -L i_tse_mac -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -dbg -O2 +access +r -t ps -L work -L i_tse_mac -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
