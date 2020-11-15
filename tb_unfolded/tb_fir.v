//`timescale 1ns

module tb_fir ();

   wire CLK_i;
   wire RST_n_i;
   wire [11:0] DIN_0;
   wire [11:0] DIN_1;
   wire [11:0] DIN_2;
   wire VIN_i;
   wire [11:0] H0_i;
   wire [11:0] H1_i;
   wire [11:0] H2_i;
   wire [11:0] H3_i;
   wire [11:0] H4_i;
   wire [11:0] H5_i;
   wire [11:0] H6_i;
   wire [11:0] H7_i;
   wire [11:0] H8_i;

   wire [11:0] DOUT_0;
   wire [11:0] DOUT_1;
   wire [11:0] DOUT_2;
   wire VOUT_i;
   wire END_SIM_i;

   clk_gen CG(.END_SIM(END_SIM_i),
  	      .CLK(CLK_i),
	      .RST_n(RST_n_i));

   data_maker_unfolded SM(.CLK(CLK_i),
	         .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT_0(DIN_0),
		 .DOUT_1(DIN_1),
		 .DOUT_2(DIN_2),
		 .H0(H0_i),
		 .H1(H1_i),
		 .H2(H2_i),
		 .H3(H3_i),
     .H4(H4_i),
     .H5(H5_i),
     .H6(H6_i),
     .H7(H7_i),
     .H8(H8_i),
		 .END_SIM(END_SIM_i));

   filter_unfolded_pipe UUT(.CLK(CLK_i), 
	     .RST_n(RST_n_i),
	     .DIN_0(DIN_0),
	     .DIN_1(DIN_1),
	     .DIN_2(DIN_2),
             .VIN(VIN_i),
	     .B0(H0_i),
	     .B1(H1_i),
	     .B2(H2_i),
	     .B3(H3_i),
       .B4(H4_i),
       .B5(H5_i),
       .B6(H6_i),
       .B7(H7_i),
       .B8(H8_i),
             .DOUT_0(DOUT_0),
	     .DOUT_1(DOUT_1),
             .DOUT_2(DOUT_2),
             .VOUT(VOUT_i));

   data_sink_unfolded DS(.CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN0(DOUT_0),
		.DIN1(DOUT_1),
		.DIN2(DOUT_2));
endmodule
