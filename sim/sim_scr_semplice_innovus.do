vcom -93 -work ./work ../src/regnbit.vhd
vcom -93 -work ./work ../src/ff.vhd
vlog  -work ./work ../innovus/filter.v

vcom -93 -work ./work ../tb/clk_gen.vhd
vcom -93 -work ./work ../tb/data_maker.vhd
vcom -93 -work ./work ../tb/data_sink.vhd

vsim -L /software/dk/nangate45/verilog/msim6.2g  -sdftyp /tb_fir/UUT=../innovus/filter.sdf work.tb_fir

vlog -work ./work ../tb/tb_fir.v
vsim work.tb_fir
add wave -r /*
run 3 us

