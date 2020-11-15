# questo script contiene tutti i comandi necessari per compilare e simulare il filtro in modo da ottenere un report dei consumi basati
# sulla switching activity.  
# usato per la post place and route simulation

vcom -93 -work ./work3 ../tb_unfolded/clk_gen.vhd
vcom -93 -work ./work3 ../tb_unfolded/data_maker_unfolded.vhd
vcom -93 -work ./work3 ../tb_unfolded/data_sink_unfolded_low.vhd
vlog -work ./work3 ../netlist/myfir_unfolded_pipe_low.v
vlog -work ./work3 ../tb_unfolded/tb_fir.v

vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_fir/UUT=../netlist/my_fir_unfolded_pipe_low.sdf work3.tb_fir
vcd file ../vcd/design_unfolded_pipe_low.vcd # sostituire il nome del vcd perché è lo stesso usato in sim_scr_post_innovus_unfolded_pipe_low.do
vcd add /tb_fir/UUT/*
add wave -r /*
run 3 us



