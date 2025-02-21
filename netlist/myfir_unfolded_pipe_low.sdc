###################################################################

# Created by write_sdc on Mon Nov  9 10:52:01 2020

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 3.40189 [get_ports {DOUT_0[11]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[10]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[9]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[8]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[7]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[6]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[5]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[4]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[3]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[2]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[1]}]
set_load -pin_load 3.40189 [get_ports {DOUT_0[0]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[11]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[10]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[9]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[8]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[7]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[6]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[5]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[4]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[3]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[2]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[1]}]
set_load -pin_load 3.40189 [get_ports {DOUT_1[0]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[11]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[10]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[9]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[8]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[7]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[6]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[5]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[4]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[3]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[2]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[1]}]
set_load -pin_load 3.40189 [get_ports {DOUT_2[0]}]
set_load -pin_load 3.40189 [get_ports VOUT]
create_clock [get_ports CLK]  -name MY_CLK  -period 6.56  -waveform {0 3.28}
set_clock_uncertainty 0.07  [get_clocks MY_CLK]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports VIN]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports RST_n]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_0[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_1[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN_2[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B0[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B1[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B2[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B3[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B4[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B5[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B6[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B7[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {B8[0]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[11]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[10]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[9]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[8]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[7]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[6]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[5]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[4]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[3]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[2]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[1]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_0[0]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[11]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[10]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[9]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[8]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[7]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[6]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[5]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[4]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[3]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[2]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[1]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_1[0]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[11]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[10]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[9]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[8]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[7]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[6]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[5]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[4]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[3]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[2]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[1]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT_2[0]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports VOUT]
