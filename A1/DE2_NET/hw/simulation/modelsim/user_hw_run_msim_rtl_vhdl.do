transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/projeto_final_logica/A1/DE2_NET/hw/reg32.vhd}
vcom -93 -work work {C:/projeto_final_logica/A1/DE2_NET/hw/user_hw.vhd}

