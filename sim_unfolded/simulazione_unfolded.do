vlib work
vcom -93 -work ./work ../src_unfolded/regnbit.vhd
vcom -93 -work ./work ../src_unfolded/ff.vhd
vcom -93 -work ./work ../src_unfolded/filter_unfolded.vhd
vlog -work ./work ../tb_unfolded/tb_fir.v
vsim work.tb_fir
add wave -r /*
