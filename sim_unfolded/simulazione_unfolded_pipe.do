vlib work2
vcom -93 -work ./work2 ../src_unfolded/regnbit.vhd
vcom -93 -work ./work2 ../src_unfolded/ff.vhd
vcom -93 -work ./work2 ../src_unfolded/filter_unfolded_pipe.vhd
vlog -work ./work2 ../tb_unfolded/tb_fir.v
vsim work2.tb_fir
add wave -r /*
