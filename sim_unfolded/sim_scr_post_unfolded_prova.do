# questo script contiene tutti i comandi necessari per compilare e simulare il filtro in modo da ottenere un report dei consumi basati
# sulla switching activity.  
# usato per la post place and route simulation
vlib work4
vcom -93 -work ./work4 ../tb/clk_gen.vhd
vcom -93 -work ./work4 ../tb_unfolded/data_maker_unfolded.vhd
vcom -93 -work ./work4 ../tb_unfolded/data_sink_unfolded.vhd
vlog -work ./work4 ../innovus_unfolded/filter_unfolded.v
vlog -work ./work4 ../tb_unfolded/tb_fir.v
#vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_fir riga inutile
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_fir/UUT=../innovus_unfolded/filter_unfolded.sdf work4.tb_fir 
vcd file ../vcd/design_unfolded.vcd
vcd add /tb_fir/UUT/*
add wave -r /*
run 3 us


