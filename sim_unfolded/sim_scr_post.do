# questo script contiene tutti i comandi necessari per compilare e simulare il filtro in modo da ottenere un report dei consumi basati
# sulla switching activity.  
# usato per la post place and route simulation

vcom -93 -work ./work ../tb/clk_gen.vhd
vcom -93 -work ./work ../tb/data_maker.vhd
vcom -93 -work ./work ../tb/data_sink.vhd
vlog -work ./work ../innovus/filter.v
vlog -work ./work ../tb/tb_fir.v
#vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_fir riga inutile
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_fir/UUT=../innovus/filter.sdf work.tb_fir
vcd file ../vcd/design.vcd
vcd add /tb_fir/UUT/*
add wave -r /*
run 3 us


