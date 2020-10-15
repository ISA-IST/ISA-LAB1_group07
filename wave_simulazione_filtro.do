onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fir/CLK_i
add wave -noupdate /tb_fir/RST_n_i
add wave -noupdate /tb_fir/DIN_i
add wave -noupdate /tb_fir/VIN_i
add wave -noupdate /tb_fir/DOUT_i
add wave -noupdate /tb_fir/VOUT_i
add wave -noupdate /tb_fir/END_SIM_i
add wave -noupdate /tb_fir/CG/END_SIM
add wave -noupdate /tb_fir/CG/CLK
add wave -noupdate /tb_fir/CG/RST_n
add wave -noupdate /tb_fir/CG/CLK_i
add wave -noupdate /tb_fir/SM/CLK
add wave -noupdate /tb_fir/SM/RST_n
add wave -noupdate /tb_fir/SM/VOUT
add wave -noupdate /tb_fir/SM/END_SIM
add wave -noupdate /tb_fir/SM/sEndSim
add wave -noupdate /tb_fir/SM/END_SIM_i
add wave -noupdate /tb_fir/UUT/VIN
add wave -noupdate /tb_fir/UUT/RST_n
add wave -noupdate /tb_fir/UUT/CLK
add wave -noupdate -radix decimal /tb_fir/UUT/DIN
add wave -noupdate -radix decimal /tb_fir/UUT/B0
add wave -noupdate -radix decimal /tb_fir/UUT/B1
add wave -noupdate -radix decimal /tb_fir/UUT/B2
add wave -noupdate -radix decimal /tb_fir/UUT/B3
add wave -noupdate -radix decimal /tb_fir/UUT/B4
add wave -noupdate -radix decimal /tb_fir/UUT/B5
add wave -noupdate -radix decimal /tb_fir/UUT/B6
add wave -noupdate -radix decimal /tb_fir/UUT/B7
add wave -noupdate -radix decimal /tb_fir/UUT/B8
add wave -noupdate -radix decimal /tb_fir/UUT/DOUT
add wave -noupdate /tb_fir/UUT/VOUT
add wave -noupdate -radix decimal /tb_fir/UUT/D_tmp
add wave -noupdate -radix decimal /tb_fir/UUT/M0
add wave -noupdate -radix decimal /tb_fir/UUT/M1
add wave -noupdate -radix decimal /tb_fir/UUT/M2
add wave -noupdate -radix decimal /tb_fir/UUT/M3
add wave -noupdate -radix decimal /tb_fir/UUT/M4
add wave -noupdate -radix decimal /tb_fir/UUT/M5
add wave -noupdate -radix decimal /tb_fir/UUT/M6
add wave -noupdate -radix decimal /tb_fir/UUT/M7
add wave -noupdate -radix decimal /tb_fir/UUT/M8
add wave -noupdate -radix decimal /tb_fir/UUT/y_tmp
add wave -noupdate /tb_fir/UUT/VAL_tmp
add wave -noupdate /tb_fir/UUT/sh_reg(0)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(0)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(0)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(0)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(0)/regs/Q
add wave -noupdate /tb_fir/UUT/sh_reg(1)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(1)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(1)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(1)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(1)/regs/Q
add wave -noupdate /tb_fir/UUT/sh_reg(2)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(2)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(2)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(2)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(2)/regs/Q
add wave -noupdate /tb_fir/UUT/sh_reg(3)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(3)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(3)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(3)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(3)/regs/Q
add wave -noupdate /tb_fir/UUT/sh_reg(4)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(4)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(4)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(4)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(4)/regs/Q
add wave -noupdate /tb_fir/UUT/sh_reg(5)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(5)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(5)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(5)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(5)/regs/Q
add wave -noupdate /tb_fir/UUT/sh_reg(6)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(6)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(6)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(6)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(6)/regs/Q
add wave -noupdate /tb_fir/UUT/sh_reg(7)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(7)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(7)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(7)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(7)/regs/Q
add wave -noupdate /tb_fir/UUT/sh_reg(8)/regs/D
add wave -noupdate /tb_fir/UUT/sh_reg(8)/regs/CLK
add wave -noupdate /tb_fir/UUT/sh_reg(8)/regs/RST_n
add wave -noupdate /tb_fir/UUT/sh_reg(8)/regs/ENABLE
add wave -noupdate /tb_fir/UUT/sh_reg(8)/regs/Q
add wave -noupdate /tb_fir/UUT/vout_reg1/CLK
add wave -noupdate /tb_fir/UUT/vout_reg1/RST_n
add wave -noupdate /tb_fir/UUT/vout_reg1/D
add wave -noupdate /tb_fir/UUT/vout_reg1/ENABLE
add wave -noupdate /tb_fir/UUT/vout_reg1/Q
add wave -noupdate /tb_fir/UUT/vout_reg2/CLK
add wave -noupdate /tb_fir/UUT/vout_reg2/RST_n
add wave -noupdate /tb_fir/UUT/vout_reg2/D
add wave -noupdate /tb_fir/UUT/vout_reg2/ENABLE
add wave -noupdate /tb_fir/UUT/vout_reg2/Q
add wave -noupdate /tb_fir/DS/CLK
add wave -noupdate /tb_fir/DS/RST_n
add wave -noupdate /tb_fir/DS/VIN
add wave -noupdate /tb_fir/DS/DIN
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {165462723 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 278
configure wave -valuecolwidth 166
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits fs
update
WaveRestoreZoom {102236160 fs} {351324961 fs}
