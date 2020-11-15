vlib work3
vcom -93 -work ./work3 ../src_unfolded/regnbit.vhd
vcom -93 -work ./work3 ../src_unfolded/ff.vhd
vcom -93 -work ./work3 ../tb/clk_gen.vhd
vcom -93 -work ./work3 ../tb_unfolded/data_maker_unfolded.vhd
vcom -93 -work ./work3 ../tb_unfolded/data_sink_unfolded_low.vhd
vcom -93 -work ./work3 ../src_unfolded/filter_unfolded_pipe_low.vhd

vlog -work ./work3 ../tb_unfolded/tb_fir.v
vsim work3.tb_fir 
add wave -r /*
