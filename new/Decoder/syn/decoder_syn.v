//
// Verilog description for cell decoder, 
// Thu May  9 00:06:20 2019
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module decoder ( decode_in, clk, decode_out ) ;

    input [4:0]decode_in ;
    input clk ;
    output [4:0]decode_out ;

    wire ctr2reg, reg2mul_15__4, reg2mul_15__3, reg2mul_15__2, reg2mul_15__1, 
         reg2mul_15__0, reg2mul_14__4, reg2mul_14__3, reg2mul_14__2, 
         reg2mul_14__1, reg2mul_14__0, reg2mul_13__4, reg2mul_13__3, 
         reg2mul_13__2, reg2mul_13__1, reg2mul_13__0, reg2mul_12__4, 
         reg2mul_12__3, reg2mul_12__2, reg2mul_12__1, reg2mul_12__0, 
         reg2mul_11__4, reg2mul_11__3, reg2mul_11__2, reg2mul_11__1, 
         reg2mul_11__0, reg2mul_10__4, reg2mul_10__3, reg2mul_10__2, 
         reg2mul_10__1, reg2mul_10__0, reg2mul_9__4, reg2mul_9__3, reg2mul_9__2, 
         reg2mul_9__1, reg2mul_9__0, reg2mul_8__4, reg2mul_8__3, reg2mul_8__2, 
         reg2mul_8__1, reg2mul_8__0, reg2mul_7__4, reg2mul_7__3, reg2mul_7__2, 
         reg2mul_7__1, reg2mul_7__0, reg2mul_6__4, reg2mul_6__3, reg2mul_6__2, 
         reg2mul_6__1, reg2mul_6__0, reg2mul_5__4, reg2mul_5__3, reg2mul_5__2, 
         reg2mul_5__1, reg2mul_5__0, reg2mul_4__4, reg2mul_4__3, reg2mul_4__2, 
         reg2mul_4__1, reg2mul_4__0, reg2mul_3__4, reg2mul_3__3, reg2mul_3__2, 
         reg2mul_3__1, reg2mul_3__0, reg2mul_2__4, reg2mul_2__3, reg2mul_2__2, 
         reg2mul_2__1, reg2mul_2__0, reg2mul_1__4, reg2mul_1__3, reg2mul_1__2, 
         reg2mul_1__1, reg2mul_1__0, reg2mul_0__4, reg2mul_0__3, reg2mul_0__2, 
         reg2mul_0__1, reg2mul_0__0, mul2acc_15__4, mul2acc_15__3, mul2acc_15__2, 
         mul2acc_15__1, mul2acc_15__0, mul2acc_14__4, mul2acc_14__3, 
         mul2acc_14__2, mul2acc_14__1, mul2acc_14__0, mul2acc_13__4, 
         mul2acc_13__3, mul2acc_13__2, mul2acc_13__1, mul2acc_13__0, 
         mul2acc_12__4, mul2acc_12__3, mul2acc_12__2, mul2acc_12__1, 
         mul2acc_12__0, mul2acc_11__4, mul2acc_11__3, mul2acc_11__2, 
         mul2acc_11__1, mul2acc_11__0, mul2acc_10__4, mul2acc_10__3, 
         mul2acc_10__2, mul2acc_10__1, mul2acc_10__0, mul2acc_9__4, mul2acc_9__3, 
         mul2acc_9__2, mul2acc_9__1, mul2acc_9__0, mul2acc_8__4, mul2acc_8__3, 
         mul2acc_8__2, mul2acc_8__1, mul2acc_8__0, mul2acc_7__4, mul2acc_7__3, 
         mul2acc_7__2, mul2acc_7__1, mul2acc_7__0, mul2acc_6__4, mul2acc_6__3, 
         mul2acc_6__2, mul2acc_6__1, mul2acc_6__0, mul2acc_5__4, mul2acc_5__3, 
         mul2acc_5__2, mul2acc_5__1, mul2acc_5__0, mul2acc_4__4, mul2acc_4__3, 
         mul2acc_4__2, mul2acc_4__1, mul2acc_4__0, mul2acc_3__4, mul2acc_3__3, 
         mul2acc_3__2, mul2acc_3__1, mul2acc_3__0, mul2acc_2__4, mul2acc_2__3, 
         mul2acc_2__2, mul2acc_2__1, mul2acc_2__0, mul2acc_1__4, mul2acc_1__3, 
         mul2acc_1__2, mul2acc_1__1, mul2acc_1__0, mul2acc_0__4, mul2acc_0__3, 
         mul2acc_0__2, mul2acc_0__1, mul2acc_0__0, acc2reg_7, acc2reg_6, 
         acc2reg_5, acc2reg_4, acc2reg_0, acc1_bv1_0__8, acc1_bv1_0__7, 
         acc1_bv1_0__6, acc1_bv1_0__5, acc1_bv1_0__4, acc1_bv1_0__3, 
         acc1_bv1_0__2, acc1_bv1_0__1, acc1_bv1_0__0, acc1_bv1_1__8, 
         acc1_bv1_1__7, acc1_bv1_1__6, acc1_bv1_1__5, acc1_bv1_1__4, 
         acc1_bv1_1__3, acc1_bv1_1__2, acc1_bv1_1__1, acc1_bv1_1__0, 
         acc1_bv1_2__8, acc1_bv1_2__7, acc1_bv1_2__6, acc1_bv1_2__5, 
         acc1_bv1_2__4, acc1_bv1_2__3, acc1_bv1_2__2, acc1_bv1_2__1, 
         acc1_bv1_2__0, acc1_bv1_3__8, acc1_bv1_3__7, acc1_bv1_3__6, 
         acc1_bv1_3__5, acc1_bv1_3__4, acc1_bv1_3__3, acc1_bv1_3__2, 
         acc1_bv1_3__1, acc1_bv1_3__0, acc1_bv1_4__8, acc1_bv1_4__7, 
         acc1_bv1_4__6, acc1_bv1_4__5, acc1_bv1_4__4, acc1_bv1_4__3, 
         acc1_bv1_4__2, acc1_bv1_4__1, acc1_bv1_4__0, acc1_bv1_5__8, 
         acc1_bv1_5__7, acc1_bv1_5__6, acc1_bv1_5__5, acc1_bv1_5__4, 
         acc1_bv1_5__3, acc1_bv1_5__2, acc1_bv1_5__1, acc1_bv1_5__0, 
         acc1_bv1_6__8, acc1_bv1_6__7, acc1_bv1_6__6, acc1_bv1_6__5, 
         acc1_bv1_6__4, acc1_bv1_6__3, acc1_bv1_6__2, acc1_bv1_6__1, 
         acc1_bv1_6__0, acc1_bv1_7__8, acc1_bv1_7__7, acc1_bv1_7__6, 
         acc1_bv1_7__5, acc1_bv1_7__4, acc1_bv1_7__3, acc1_bv1_7__2, 
         acc1_bv1_7__1, acc1_bv1_7__0, acc1_bv2_0__8, acc1_bv2_0__7, 
         acc1_bv2_0__6, acc1_bv2_0__5, acc1_bv2_0__4, acc1_bv2_0__3, 
         acc1_bv2_0__2, acc1_bv2_0__1, acc1_bv2_0__0, acc1_bv2_1__8, 
         acc1_bv2_1__7, acc1_bv2_1__6, acc1_bv2_1__5, acc1_bv2_1__4, 
         acc1_bv2_1__3, acc1_bv2_1__2, acc1_bv2_1__1, acc1_bv2_1__0, 
         acc1_bv2_2__8, acc1_bv2_2__7, acc1_bv2_2__6, acc1_bv2_2__5, 
         acc1_bv2_2__4, acc1_bv2_2__3, acc1_bv2_2__2, acc1_bv2_2__1, 
         acc1_bv2_2__0, acc1_bv2_3__8, acc1_bv2_3__7, acc1_bv2_3__6, 
         acc1_bv2_3__5, acc1_bv2_3__4, acc1_bv2_3__3, acc1_bv2_3__2, 
         acc1_bv2_3__1, acc1_bv2_3__0, acc1_bv3_0__8, acc1_bv3_0__7, 
         acc1_bv3_0__6, acc1_bv3_0__5, acc1_bv3_0__4, acc1_bv3_0__3, 
         acc1_bv3_0__2, acc1_bv3_0__1, acc1_bv3_0__0, acc1_bv3_1__8, 
         acc1_bv3_1__7, acc1_bv3_1__6, acc1_bv3_1__5, acc1_bv3_1__4, 
         acc1_bv3_1__3, acc1_bv3_1__2, acc1_bv3_1__1, acc1_bv3_1__0, acc2reg_8, 
         acc2reg_1, acc2reg_2, acc2reg_3, GND, sipo2dl_0, nx8, nx10, nx16, nx34, 
         nx40, nx46, ctr1_curr_state_0, nx396, nx70, sipo2dl_1, sipo2dl_2, 
         sipo2dl_3, nx406, nx409, nx411, nx413, nx416, nx420, nx422, nx424, 
         nx426, nx428, nx431, nx433, nx435, nx439, nx443, nx461, nx463, nx465, 
         nx467, nx469, nx471, nx473, nx475, nx477, nx479, nx481, nx483, nx485, 
         nx487, nx489, nx491, nx493, nx495, nx497, nx499, nx501, nx503, nx505, 
         nx507, nx509, nx511, nx513, nx515, nx517, nx519, nx521, nx523, nx525, 
         nx527, nx529, nx531, nx533, nx535, nx537, nx539, nx541, nx543, nx545, 
         nx547, nx549, nx551, nx553, nx555, nx557, nx559, nx561, nx563, nx565, 
         nx567, nx569, nx571;
    wire [4:0] \$dummy ;




    sipo recev_0_reg (.clr (GND), .clk (clk), .en (ctr2reg), .ser_data ({
         decode_in[4],decode_in[3],decode_in[2],decode_in[1],decode_in[0]}), .pal_data_15__4 (
         reg2mul_15__4), .pal_data_15__3 (reg2mul_15__3), .pal_data_15__2 (
         reg2mul_15__2), .pal_data_15__1 (reg2mul_15__1), .pal_data_15__0 (
         reg2mul_15__0), .pal_data_14__4 (reg2mul_14__4), .pal_data_14__3 (
         reg2mul_14__3), .pal_data_14__2 (reg2mul_14__2), .pal_data_14__1 (
         reg2mul_14__1), .pal_data_14__0 (reg2mul_14__0), .pal_data_13__4 (
         reg2mul_13__4), .pal_data_13__3 (reg2mul_13__3), .pal_data_13__2 (
         reg2mul_13__2), .pal_data_13__1 (reg2mul_13__1), .pal_data_13__0 (
         reg2mul_13__0), .pal_data_12__4 (reg2mul_12__4), .pal_data_12__3 (
         reg2mul_12__3), .pal_data_12__2 (reg2mul_12__2), .pal_data_12__1 (
         reg2mul_12__1), .pal_data_12__0 (reg2mul_12__0), .pal_data_11__4 (
         reg2mul_11__4), .pal_data_11__3 (reg2mul_11__3), .pal_data_11__2 (
         reg2mul_11__2), .pal_data_11__1 (reg2mul_11__1), .pal_data_11__0 (
         reg2mul_11__0), .pal_data_10__4 (reg2mul_10__4), .pal_data_10__3 (
         reg2mul_10__3), .pal_data_10__2 (reg2mul_10__2), .pal_data_10__1 (
         reg2mul_10__1), .pal_data_10__0 (reg2mul_10__0), .pal_data_9__4 (
         reg2mul_9__4), .pal_data_9__3 (reg2mul_9__3), .pal_data_9__2 (
         reg2mul_9__2), .pal_data_9__1 (reg2mul_9__1), .pal_data_9__0 (
         reg2mul_9__0), .pal_data_8__4 (reg2mul_8__4), .pal_data_8__3 (
         reg2mul_8__3), .pal_data_8__2 (reg2mul_8__2), .pal_data_8__1 (
         reg2mul_8__1), .pal_data_8__0 (reg2mul_8__0), .pal_data_7__4 (
         reg2mul_7__4), .pal_data_7__3 (reg2mul_7__3), .pal_data_7__2 (
         reg2mul_7__2), .pal_data_7__1 (reg2mul_7__1), .pal_data_7__0 (
         reg2mul_7__0), .pal_data_6__4 (reg2mul_6__4), .pal_data_6__3 (
         reg2mul_6__3), .pal_data_6__2 (reg2mul_6__2), .pal_data_6__1 (
         reg2mul_6__1), .pal_data_6__0 (reg2mul_6__0), .pal_data_5__4 (
         reg2mul_5__4), .pal_data_5__3 (reg2mul_5__3), .pal_data_5__2 (
         reg2mul_5__2), .pal_data_5__1 (reg2mul_5__1), .pal_data_5__0 (
         reg2mul_5__0), .pal_data_4__4 (reg2mul_4__4), .pal_data_4__3 (
         reg2mul_4__3), .pal_data_4__2 (reg2mul_4__2), .pal_data_4__1 (
         reg2mul_4__1), .pal_data_4__0 (reg2mul_4__0), .pal_data_3__4 (
         reg2mul_3__4), .pal_data_3__3 (reg2mul_3__3), .pal_data_3__2 (
         reg2mul_3__2), .pal_data_3__1 (reg2mul_3__1), .pal_data_3__0 (
         reg2mul_3__0), .pal_data_2__4 (reg2mul_2__4), .pal_data_2__3 (
         reg2mul_2__3), .pal_data_2__2 (reg2mul_2__2), .pal_data_2__1 (
         reg2mul_2__1), .pal_data_2__0 (reg2mul_2__0), .pal_data_1__4 (
         reg2mul_1__4), .pal_data_1__3 (reg2mul_1__3), .pal_data_1__2 (
         reg2mul_1__2), .pal_data_1__1 (reg2mul_1__1), .pal_data_1__0 (
         reg2mul_1__0), .pal_data_0__4 (reg2mul_0__4), .pal_data_0__3 (
         reg2mul_0__3), .pal_data_0__2 (reg2mul_0__2), .pal_data_0__1 (
         reg2mul_0__1), .pal_data_0__0 (reg2mul_0__0)) ;
    counter_chip ctr_ld (.clk (clk), .chip_rdy (ctr2reg)) ;
    ChipMultiplier mult1_chipmulties_15_cm (.A ({reg2mul_15__4,reg2mul_15__3,
                   reg2mul_15__2,reg2mul_15__1,reg2mul_15__0}), .B ({GND,GND,GND
                   ,GND,GND}), .C ({mul2acc_15__4,mul2acc_15__3,mul2acc_15__2,
                   mul2acc_15__1,mul2acc_15__0})) ;
    ChipMultiplier mult1_chipmulties_14_cm (.A ({reg2mul_14__4,reg2mul_14__3,
                   reg2mul_14__2,reg2mul_14__1,reg2mul_14__0}), .B ({GND,GND,GND
                   ,GND,GND}), .C ({mul2acc_14__4,mul2acc_14__3,mul2acc_14__2,
                   mul2acc_14__1,mul2acc_14__0})) ;
    ChipMultiplier mult1_chipmulties_13_cm (.A ({reg2mul_13__4,reg2mul_13__3,
                   reg2mul_13__2,reg2mul_13__1,reg2mul_13__0}), .B ({GND,GND,GND
                   ,GND,GND}), .C ({mul2acc_13__4,mul2acc_13__3,mul2acc_13__2,
                   mul2acc_13__1,mul2acc_13__0})) ;
    ChipMultiplier mult1_chipmulties_12_cm (.A ({reg2mul_12__4,reg2mul_12__3,
                   reg2mul_12__2,reg2mul_12__1,reg2mul_12__0}), .B ({GND,GND,GND
                   ,GND,GND}), .C ({mul2acc_12__4,mul2acc_12__3,mul2acc_12__2,
                   mul2acc_12__1,mul2acc_12__0})) ;
    ChipMultiplier mult1_chipmulties_11_cm (.A ({reg2mul_11__4,reg2mul_11__3,
                   reg2mul_11__2,reg2mul_11__1,reg2mul_11__0}), .B ({GND,GND,GND
                   ,GND,GND}), .C ({mul2acc_11__4,mul2acc_11__3,mul2acc_11__2,
                   mul2acc_11__1,mul2acc_11__0})) ;
    ChipMultiplier mult1_chipmulties_10_cm (.A ({reg2mul_10__4,reg2mul_10__3,
                   reg2mul_10__2,reg2mul_10__1,reg2mul_10__0}), .B ({GND,GND,GND
                   ,GND,GND}), .C ({mul2acc_10__4,mul2acc_10__3,mul2acc_10__2,
                   mul2acc_10__1,mul2acc_10__0})) ;
    ChipMultiplier mult1_chipmulties_9_cm (.A ({reg2mul_9__4,reg2mul_9__3,
                   reg2mul_9__2,reg2mul_9__1,reg2mul_9__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_9__4,mul2acc_9__3,mul2acc_9__2,
                   mul2acc_9__1,mul2acc_9__0})) ;
    ChipMultiplier mult1_chipmulties_8_cm (.A ({reg2mul_8__4,reg2mul_8__3,
                   reg2mul_8__2,reg2mul_8__1,reg2mul_8__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_8__4,mul2acc_8__3,mul2acc_8__2,
                   mul2acc_8__1,mul2acc_8__0})) ;
    ChipMultiplier mult1_chipmulties_7_cm (.A ({reg2mul_7__4,reg2mul_7__3,
                   reg2mul_7__2,reg2mul_7__1,reg2mul_7__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_7__4,mul2acc_7__3,mul2acc_7__2,
                   mul2acc_7__1,mul2acc_7__0})) ;
    ChipMultiplier mult1_chipmulties_6_cm (.A ({reg2mul_6__4,reg2mul_6__3,
                   reg2mul_6__2,reg2mul_6__1,reg2mul_6__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_6__4,mul2acc_6__3,mul2acc_6__2,
                   mul2acc_6__1,mul2acc_6__0})) ;
    ChipMultiplier mult1_chipmulties_5_cm (.A ({reg2mul_5__4,reg2mul_5__3,
                   reg2mul_5__2,reg2mul_5__1,reg2mul_5__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_5__4,mul2acc_5__3,mul2acc_5__2,
                   mul2acc_5__1,mul2acc_5__0})) ;
    ChipMultiplier mult1_chipmulties_4_cm (.A ({reg2mul_4__4,reg2mul_4__3,
                   reg2mul_4__2,reg2mul_4__1,reg2mul_4__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_4__4,mul2acc_4__3,mul2acc_4__2,
                   mul2acc_4__1,mul2acc_4__0})) ;
    ChipMultiplier mult1_chipmulties_3_cm (.A ({reg2mul_3__4,reg2mul_3__3,
                   reg2mul_3__2,reg2mul_3__1,reg2mul_3__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_3__4,mul2acc_3__3,mul2acc_3__2,
                   mul2acc_3__1,mul2acc_3__0})) ;
    ChipMultiplier mult1_chipmulties_2_cm (.A ({reg2mul_2__4,reg2mul_2__3,
                   reg2mul_2__2,reg2mul_2__1,reg2mul_2__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_2__4,mul2acc_2__3,mul2acc_2__2,
                   mul2acc_2__1,mul2acc_2__0})) ;
    ChipMultiplier mult1_chipmulties_1_cm (.A ({reg2mul_1__4,reg2mul_1__3,
                   reg2mul_1__2,reg2mul_1__1,reg2mul_1__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_1__4,mul2acc_1__3,mul2acc_1__2,
                   mul2acc_1__1,mul2acc_1__0})) ;
    ChipMultiplier mult1_chipmulties_0_cm (.A ({reg2mul_0__4,reg2mul_0__3,
                   reg2mul_0__2,reg2mul_0__1,reg2mul_0__0}), .B ({GND,GND,GND,
                   GND,GND}), .C ({mul2acc_0__4,mul2acc_0__3,mul2acc_0__2,
                   mul2acc_0__1,mul2acc_0__0})) ;
    Bit9Adder acc1_lvl2_0_b9a (.A ({acc1_bv1_0__8,acc1_bv1_0__7,acc1_bv1_0__6,
              acc1_bv1_0__5,acc1_bv1_0__4,acc1_bv1_0__3,acc1_bv1_0__2,
              acc1_bv1_0__1,acc1_bv1_0__0}), .B ({acc1_bv1_1__8,acc1_bv1_1__7,
              acc1_bv1_1__6,acc1_bv1_1__5,acc1_bv1_1__4,acc1_bv1_1__3,
              acc1_bv1_1__2,acc1_bv1_1__1,acc1_bv1_1__0}), .C ({acc1_bv2_0__8,
              acc1_bv2_0__7,acc1_bv2_0__6,acc1_bv2_0__5,acc1_bv2_0__4,
              acc1_bv2_0__3,acc1_bv2_0__2,acc1_bv2_0__1,acc1_bv2_0__0})) ;
    Bit9Adder acc1_lvl2_1_b9a (.A ({acc1_bv1_2__8,acc1_bv1_2__7,acc1_bv1_2__6,
              acc1_bv1_2__5,acc1_bv1_2__4,acc1_bv1_2__3,acc1_bv1_2__2,
              acc1_bv1_2__1,acc1_bv1_2__0}), .B ({acc1_bv1_3__8,acc1_bv1_3__7,
              acc1_bv1_3__6,acc1_bv1_3__5,acc1_bv1_3__4,acc1_bv1_3__3,
              acc1_bv1_3__2,acc1_bv1_3__1,acc1_bv1_3__0}), .C ({acc1_bv2_1__8,
              acc1_bv2_1__7,acc1_bv2_1__6,acc1_bv2_1__5,acc1_bv2_1__4,
              acc1_bv2_1__3,acc1_bv2_1__2,acc1_bv2_1__1,acc1_bv2_1__0})) ;
    Bit9Adder acc1_lvl2_2_b9a (.A ({acc1_bv1_4__8,acc1_bv1_4__7,acc1_bv1_4__6,
              acc1_bv1_4__5,acc1_bv1_4__4,acc1_bv1_4__3,acc1_bv1_4__2,
              acc1_bv1_4__1,acc1_bv1_4__0}), .B ({acc1_bv1_5__8,acc1_bv1_5__7,
              acc1_bv1_5__6,acc1_bv1_5__5,acc1_bv1_5__4,acc1_bv1_5__3,
              acc1_bv1_5__2,acc1_bv1_5__1,acc1_bv1_5__0}), .C ({acc1_bv2_2__8,
              acc1_bv2_2__7,acc1_bv2_2__6,acc1_bv2_2__5,acc1_bv2_2__4,
              acc1_bv2_2__3,acc1_bv2_2__2,acc1_bv2_2__1,acc1_bv2_2__0})) ;
    Bit9Adder acc1_lvl2_3_b9a (.A ({acc1_bv1_6__8,acc1_bv1_6__7,acc1_bv1_6__6,
              acc1_bv1_6__5,acc1_bv1_6__4,acc1_bv1_6__3,acc1_bv1_6__2,
              acc1_bv1_6__1,acc1_bv1_6__0}), .B ({acc1_bv1_7__8,acc1_bv1_7__7,
              acc1_bv1_7__6,acc1_bv1_7__5,acc1_bv1_7__4,acc1_bv1_7__3,
              acc1_bv1_7__2,acc1_bv1_7__1,acc1_bv1_7__0}), .C ({acc1_bv2_3__8,
              acc1_bv2_3__7,acc1_bv2_3__6,acc1_bv2_3__5,acc1_bv2_3__4,
              acc1_bv2_3__3,acc1_bv2_3__2,acc1_bv2_3__1,acc1_bv2_3__0})) ;
    Bit9Adder acc1_lvl3_0_b9a (.A ({acc1_bv2_0__8,acc1_bv2_0__7,acc1_bv2_0__6,
              acc1_bv2_0__5,acc1_bv2_0__4,acc1_bv2_0__3,acc1_bv2_0__2,
              acc1_bv2_0__1,acc1_bv2_0__0}), .B ({acc1_bv2_1__8,acc1_bv2_1__7,
              acc1_bv2_1__6,acc1_bv2_1__5,acc1_bv2_1__4,acc1_bv2_1__3,
              acc1_bv2_1__2,acc1_bv2_1__1,acc1_bv2_1__0}), .C ({acc1_bv3_0__8,
              acc1_bv3_0__7,acc1_bv3_0__6,acc1_bv3_0__5,acc1_bv3_0__4,
              acc1_bv3_0__3,acc1_bv3_0__2,acc1_bv3_0__1,acc1_bv3_0__0})) ;
    Bit9Adder acc1_lvl3_1_b9a (.A ({acc1_bv2_2__8,acc1_bv2_2__7,acc1_bv2_2__6,
              acc1_bv2_2__5,acc1_bv2_2__4,acc1_bv2_2__3,acc1_bv2_2__2,
              acc1_bv2_2__1,acc1_bv2_2__0}), .B ({acc1_bv2_3__8,acc1_bv2_3__7,
              acc1_bv2_3__6,acc1_bv2_3__5,acc1_bv2_3__4,acc1_bv2_3__3,
              acc1_bv2_3__2,acc1_bv2_3__1,acc1_bv2_3__0}), .C ({acc1_bv3_1__8,
              acc1_bv3_1__7,acc1_bv3_1__6,acc1_bv3_1__5,acc1_bv3_1__4,
              acc1_bv3_1__3,acc1_bv3_1__2,acc1_bv3_1__1,acc1_bv3_1__0})) ;
    Bit9Adder acc1_b9a (.A ({acc1_bv3_0__8,acc1_bv3_0__7,acc1_bv3_0__6,
              acc1_bv3_0__5,acc1_bv3_0__4,acc1_bv3_0__3,acc1_bv3_0__2,
              acc1_bv3_0__1,acc1_bv3_0__0}), .B ({acc1_bv3_1__8,acc1_bv3_1__7,
              acc1_bv3_1__6,acc1_bv3_1__5,acc1_bv3_1__4,acc1_bv3_1__3,
              acc1_bv3_1__2,acc1_bv3_1__1,acc1_bv3_1__0}), .C ({acc2reg_8,
              acc2reg_7,acc2reg_6,acc2reg_5,acc2reg_4,acc2reg_3,acc2reg_2,
              acc2reg_1,acc2reg_0})) ;
    Bit9Adder acc1_lvl1_0_ca_B9A (.A ({nx565,nx565,nx567,nx569,nx571,
              mul2acc_0__3,mul2acc_0__2,mul2acc_0__1,mul2acc_0__0}), .B ({nx559,
              nx559,nx559,nx561,nx561,mul2acc_1__3,mul2acc_1__2,mul2acc_1__1,
              mul2acc_1__0}), .C ({acc1_bv1_0__8,acc1_bv1_0__7,acc1_bv1_0__6,
              acc1_bv1_0__5,acc1_bv1_0__4,acc1_bv1_0__3,acc1_bv1_0__2,
              acc1_bv1_0__1,acc1_bv1_0__0})) ;
    Bit9Adder acc1_lvl1_1_ca_B9A (.A ({nx551,nx551,nx553,nx555,nx557,
              mul2acc_2__3,mul2acc_2__2,mul2acc_2__1,mul2acc_2__0}), .B ({nx545,
              nx545,nx545,nx547,nx547,mul2acc_3__3,mul2acc_3__2,mul2acc_3__1,
              mul2acc_3__0}), .C ({acc1_bv1_1__8,acc1_bv1_1__7,acc1_bv1_1__6,
              acc1_bv1_1__5,acc1_bv1_1__4,acc1_bv1_1__3,acc1_bv1_1__2,
              acc1_bv1_1__1,acc1_bv1_1__0})) ;
    Bit9Adder acc1_lvl1_2_ca_B9A (.A ({nx537,nx537,nx539,nx541,nx543,
              mul2acc_4__3,mul2acc_4__2,mul2acc_4__1,mul2acc_4__0}), .B ({nx531,
              nx531,nx531,nx533,nx533,mul2acc_5__3,mul2acc_5__2,mul2acc_5__1,
              mul2acc_5__0}), .C ({acc1_bv1_2__8,acc1_bv1_2__7,acc1_bv1_2__6,
              acc1_bv1_2__5,acc1_bv1_2__4,acc1_bv1_2__3,acc1_bv1_2__2,
              acc1_bv1_2__1,acc1_bv1_2__0})) ;
    Bit9Adder acc1_lvl1_3_ca_B9A (.A ({nx523,nx523,nx525,nx527,nx529,
              mul2acc_6__3,mul2acc_6__2,mul2acc_6__1,mul2acc_6__0}), .B ({nx517,
              nx517,nx517,nx519,nx519,mul2acc_7__3,mul2acc_7__2,mul2acc_7__1,
              mul2acc_7__0}), .C ({acc1_bv1_3__8,acc1_bv1_3__7,acc1_bv1_3__6,
              acc1_bv1_3__5,acc1_bv1_3__4,acc1_bv1_3__3,acc1_bv1_3__2,
              acc1_bv1_3__1,acc1_bv1_3__0})) ;
    Bit9Adder acc1_lvl1_4_ca_B9A (.A ({nx509,nx509,nx511,nx513,nx515,
              mul2acc_8__3,mul2acc_8__2,mul2acc_8__1,mul2acc_8__0}), .B ({nx503,
              nx503,nx503,nx505,nx505,mul2acc_9__3,mul2acc_9__2,mul2acc_9__1,
              mul2acc_9__0}), .C ({acc1_bv1_4__8,acc1_bv1_4__7,acc1_bv1_4__6,
              acc1_bv1_4__5,acc1_bv1_4__4,acc1_bv1_4__3,acc1_bv1_4__2,
              acc1_bv1_4__1,acc1_bv1_4__0})) ;
    Bit9Adder acc1_lvl1_5_ca_B9A (.A ({nx495,nx495,nx497,nx499,nx501,
              mul2acc_10__3,mul2acc_10__2,mul2acc_10__1,mul2acc_10__0}), .B ({
              nx489,nx489,nx489,nx491,nx491,mul2acc_11__3,mul2acc_11__2,
              mul2acc_11__1,mul2acc_11__0}), .C ({acc1_bv1_5__8,acc1_bv1_5__7,
              acc1_bv1_5__6,acc1_bv1_5__5,acc1_bv1_5__4,acc1_bv1_5__3,
              acc1_bv1_5__2,acc1_bv1_5__1,acc1_bv1_5__0})) ;
    Bit9Adder acc1_lvl1_6_ca_B9A (.A ({nx481,nx481,nx483,nx485,nx487,
              mul2acc_12__3,mul2acc_12__2,mul2acc_12__1,mul2acc_12__0}), .B ({
              nx475,nx475,nx475,nx477,nx477,mul2acc_13__3,mul2acc_13__2,
              mul2acc_13__1,mul2acc_13__0}), .C ({acc1_bv1_6__8,acc1_bv1_6__7,
              acc1_bv1_6__6,acc1_bv1_6__5,acc1_bv1_6__4,acc1_bv1_6__3,
              acc1_bv1_6__2,acc1_bv1_6__1,acc1_bv1_6__0})) ;
    Bit9Adder acc1_lvl1_7_ca_B9A (.A ({nx467,nx467,nx469,nx471,nx473,
              mul2acc_14__3,mul2acc_14__2,mul2acc_14__1,mul2acc_14__0}), .B ({
              nx461,nx461,nx461,nx463,nx463,mul2acc_15__3,mul2acc_15__2,
              mul2acc_15__1,mul2acc_15__0}), .C ({acc1_bv1_7__8,acc1_bv1_7__7,
              acc1_bv1_7__6,acc1_bv1_7__5,acc1_bv1_7__4,acc1_bv1_7__3,
              acc1_bv1_7__2,acc1_bv1_7__1,acc1_bv1_7__0})) ;
    fake_gnd ix382 (.Y (GND)) ;
    latch dlat1_lat_user_data_0 (.Q (decode_out[0]), .D (sipo2dl_0), .CLK (
          decode_out[4])) ;
    dff sipo1_reg_temp_0 (.Q (sipo2dl_0), .QB (\$dummy [0]), .D (nx16), .CLK (
        nx46)) ;
    nor02 ix17 (.Y (nx16), .A0 (acc2reg_8), .A1 (nx406)) ;
    nor03 ix407 (.Y (nx406), .A0 (acc2reg_6), .A1 (acc2reg_7), .A2 (nx8)) ;
    nand03 ix9 (.Y (nx8), .A0 (nx409), .A1 (nx411), .A2 (nx413)) ;
    nand04 ix410 (.Y (nx409), .A0 (acc2reg_0), .A1 (acc2reg_3), .A2 (acc2reg_2)
           , .A3 (acc2reg_1)) ;
    inv01 ix412 (.Y (nx411), .A (acc2reg_4)) ;
    inv01 ix414 (.Y (nx413), .A (acc2reg_5)) ;
    nand02 ix47 (.Y (nx46), .A0 (nx416), .A1 (nx428)) ;
    oai21 ix417 (.Y (nx416), .A0 (nx40), .A1 (nx34), .B0 (acc2reg_8)) ;
    nand02 ix41 (.Y (nx40), .A0 (acc2reg_6), .A1 (acc2reg_7)) ;
    nand03 ix35 (.Y (nx34), .A0 (nx420), .A1 (acc2reg_4), .A2 (acc2reg_5)) ;
    nand03 ix421 (.Y (nx420), .A0 (nx422), .A1 (nx424), .A2 (nx426)) ;
    inv01 ix423 (.Y (nx422), .A (acc2reg_1)) ;
    inv01 ix425 (.Y (nx424), .A (acc2reg_3)) ;
    inv01 ix427 (.Y (nx426), .A (acc2reg_2)) ;
    oai21 ix429 (.Y (nx428), .A0 (nx10), .A1 (nx8), .B0 (nx435)) ;
    nand02 ix11 (.Y (nx10), .A0 (nx431), .A1 (nx433)) ;
    inv01 ix432 (.Y (nx431), .A (acc2reg_6)) ;
    inv01 ix434 (.Y (nx433), .A (acc2reg_7)) ;
    inv01 ix436 (.Y (nx435), .A (acc2reg_8)) ;
    nor02 ix79 (.Y (decode_out[4]), .A0 (nx439), .A1 (nx443)) ;
    dff ctr1_reg_curr_state_1 (.Q (\$dummy [1]), .QB (nx439), .D (nx70), .CLK (
        nx46)) ;
    nand02 ix63 (.Y (nx396), .A0 (ctr1_curr_state_0), .A1 (nx439)) ;
    dff ctr1_reg_curr_state_0 (.Q (ctr1_curr_state_0), .QB (nx443), .D (nx396), 
        .CLK (nx46)) ;
    latch dlat1_lat_user_data_1 (.Q (decode_out[1]), .D (sipo2dl_1), .CLK (
          decode_out[4])) ;
    dff sipo1_reg_temp_1 (.Q (sipo2dl_1), .QB (\$dummy [2]), .D (sipo2dl_0), .CLK (
        nx46)) ;
    latch dlat1_lat_user_data_2 (.Q (decode_out[2]), .D (sipo2dl_2), .CLK (
          decode_out[4])) ;
    dff sipo1_reg_temp_2 (.Q (sipo2dl_2), .QB (\$dummy [3]), .D (sipo2dl_1), .CLK (
        nx46)) ;
    latch dlat1_lat_user_data_3 (.Q (decode_out[3]), .D (sipo2dl_3), .CLK (
          decode_out[4])) ;
    dff sipo1_reg_temp_3 (.Q (sipo2dl_3), .QB (\$dummy [4]), .D (sipo2dl_2), .CLK (
        nx46)) ;
    buf02 ix460 (.Y (nx461), .A (mul2acc_15__4)) ;
    buf02 ix462 (.Y (nx463), .A (mul2acc_15__4)) ;
    inv01 ix464 (.Y (nx465), .A (mul2acc_14__4)) ;
    inv01 ix466 (.Y (nx467), .A (nx465)) ;
    inv01 ix468 (.Y (nx469), .A (nx465)) ;
    inv01 ix470 (.Y (nx471), .A (nx465)) ;
    inv01 ix472 (.Y (nx473), .A (nx465)) ;
    buf02 ix474 (.Y (nx475), .A (mul2acc_13__4)) ;
    buf02 ix476 (.Y (nx477), .A (mul2acc_13__4)) ;
    inv01 ix478 (.Y (nx479), .A (mul2acc_12__4)) ;
    inv01 ix480 (.Y (nx481), .A (nx479)) ;
    inv01 ix482 (.Y (nx483), .A (nx479)) ;
    inv01 ix484 (.Y (nx485), .A (nx479)) ;
    inv01 ix486 (.Y (nx487), .A (nx479)) ;
    buf02 ix488 (.Y (nx489), .A (mul2acc_11__4)) ;
    buf02 ix490 (.Y (nx491), .A (mul2acc_11__4)) ;
    inv01 ix492 (.Y (nx493), .A (mul2acc_10__4)) ;
    inv01 ix494 (.Y (nx495), .A (nx493)) ;
    inv01 ix496 (.Y (nx497), .A (nx493)) ;
    inv01 ix498 (.Y (nx499), .A (nx493)) ;
    inv01 ix500 (.Y (nx501), .A (nx493)) ;
    buf02 ix502 (.Y (nx503), .A (mul2acc_9__4)) ;
    buf02 ix504 (.Y (nx505), .A (mul2acc_9__4)) ;
    inv01 ix506 (.Y (nx507), .A (mul2acc_8__4)) ;
    inv01 ix508 (.Y (nx509), .A (nx507)) ;
    inv01 ix510 (.Y (nx511), .A (nx507)) ;
    inv01 ix512 (.Y (nx513), .A (nx507)) ;
    inv01 ix514 (.Y (nx515), .A (nx507)) ;
    buf02 ix516 (.Y (nx517), .A (mul2acc_7__4)) ;
    buf02 ix518 (.Y (nx519), .A (mul2acc_7__4)) ;
    inv01 ix520 (.Y (nx521), .A (mul2acc_6__4)) ;
    inv01 ix522 (.Y (nx523), .A (nx521)) ;
    inv01 ix524 (.Y (nx525), .A (nx521)) ;
    inv01 ix526 (.Y (nx527), .A (nx521)) ;
    inv01 ix528 (.Y (nx529), .A (nx521)) ;
    buf02 ix530 (.Y (nx531), .A (mul2acc_5__4)) ;
    buf02 ix532 (.Y (nx533), .A (mul2acc_5__4)) ;
    inv01 ix534 (.Y (nx535), .A (mul2acc_4__4)) ;
    inv01 ix536 (.Y (nx537), .A (nx535)) ;
    inv01 ix538 (.Y (nx539), .A (nx535)) ;
    inv01 ix540 (.Y (nx541), .A (nx535)) ;
    inv01 ix542 (.Y (nx543), .A (nx535)) ;
    buf02 ix544 (.Y (nx545), .A (mul2acc_3__4)) ;
    buf02 ix546 (.Y (nx547), .A (mul2acc_3__4)) ;
    inv01 ix548 (.Y (nx549), .A (mul2acc_2__4)) ;
    inv01 ix550 (.Y (nx551), .A (nx549)) ;
    inv01 ix552 (.Y (nx553), .A (nx549)) ;
    inv01 ix554 (.Y (nx555), .A (nx549)) ;
    inv01 ix556 (.Y (nx557), .A (nx549)) ;
    buf02 ix558 (.Y (nx559), .A (mul2acc_1__4)) ;
    buf02 ix560 (.Y (nx561), .A (mul2acc_1__4)) ;
    inv01 ix562 (.Y (nx563), .A (mul2acc_0__4)) ;
    inv01 ix564 (.Y (nx565), .A (nx563)) ;
    inv01 ix566 (.Y (nx567), .A (nx563)) ;
    inv01 ix568 (.Y (nx569), .A (nx563)) ;
    inv01 ix570 (.Y (nx571), .A (nx563)) ;
    xnor2 ix71 (.Y (nx70), .A0 (nx439), .A1 (ctr1_curr_state_0)) ;
endmodule


module Bit9Adder ( A, B, C ) ;

    input [8:0]A ;
    input [8:0]B ;
    output [8:0]C ;

    wire nx8, nx14, nx20, nx26, nx32, nx38, nx44, nx48, nx52, nx56, nx60, nx64, 
         nx68, nx72, nx186, nx189, nx192, nx195, nx198, nx201, nx204, nx207, 
         nx209, nx212, nx215, nx218, nx220, nx223, nx226, nx229, nx231, nx234, 
         nx237, nx240, nx242, nx245, nx248, nx251, nx253, nx256, nx259, nx262, 
         nx264;



    xnor2 ix95 (.Y (C[0]), .A0 (B[0]), .A1 (nx186)) ;
    inv01 ix187 (.Y (nx186), .A (A[0])) ;
    xnor2 ix89 (.Y (C[1]), .A0 (nx189), .A1 (nx44)) ;
    xnor2 ix190 (.Y (nx189), .A0 (A[1]), .A1 (B[1])) ;
    inv01 ix45 (.Y (nx44), .A (nx192)) ;
    nand02 ix193 (.Y (nx192), .A0 (B[0]), .A1 (A[0])) ;
    xnor2 ix87 (.Y (C[2]), .A0 (nx195), .A1 (nx48)) ;
    xnor2 ix196 (.Y (nx195), .A0 (A[2]), .A1 (B[2])) ;
    oai21 ix49 (.Y (nx48), .A0 (nx192), .A1 (nx189), .B0 (nx198)) ;
    nand02 ix199 (.Y (nx198), .A0 (A[1]), .A1 (B[1])) ;
    xnor2 ix85 (.Y (C[3]), .A0 (nx201), .A1 (nx52)) ;
    xnor2 ix202 (.Y (nx201), .A0 (A[3]), .A1 (B[3])) ;
    mux21 ix53 (.Y (nx52), .A0 (nx204), .A1 (nx209), .S0 (nx195)) ;
    aoi22 ix205 (.Y (nx204), .A0 (A[1]), .A1 (B[1]), .B0 (nx44), .B1 (nx38)) ;
    xnor2 ix39 (.Y (nx38), .A0 (A[1]), .A1 (nx207)) ;
    inv01 ix208 (.Y (nx207), .A (B[1])) ;
    inv01 ix210 (.Y (nx209), .A (A[2])) ;
    xnor2 ix83 (.Y (C[4]), .A0 (nx212), .A1 (nx56)) ;
    xnor2 ix213 (.Y (nx212), .A0 (A[4]), .A1 (B[4])) ;
    mux21 ix57 (.Y (nx56), .A0 (nx215), .A1 (nx220), .S0 (nx201)) ;
    aoi22 ix216 (.Y (nx215), .A0 (A[2]), .A1 (B[2]), .B0 (nx48), .B1 (nx32)) ;
    xnor2 ix33 (.Y (nx32), .A0 (A[2]), .A1 (nx218)) ;
    inv01 ix219 (.Y (nx218), .A (B[2])) ;
    inv01 ix221 (.Y (nx220), .A (A[3])) ;
    xnor2 ix81 (.Y (C[5]), .A0 (nx223), .A1 (nx60)) ;
    xnor2 ix224 (.Y (nx223), .A0 (A[5]), .A1 (B[5])) ;
    mux21 ix61 (.Y (nx60), .A0 (nx226), .A1 (nx231), .S0 (nx212)) ;
    aoi22 ix227 (.Y (nx226), .A0 (A[3]), .A1 (B[3]), .B0 (nx52), .B1 (nx26)) ;
    xnor2 ix27 (.Y (nx26), .A0 (A[3]), .A1 (nx229)) ;
    inv01 ix230 (.Y (nx229), .A (B[3])) ;
    inv01 ix232 (.Y (nx231), .A (A[4])) ;
    xnor2 ix79 (.Y (C[6]), .A0 (nx234), .A1 (nx64)) ;
    xnor2 ix235 (.Y (nx234), .A0 (A[6]), .A1 (B[6])) ;
    mux21 ix65 (.Y (nx64), .A0 (nx237), .A1 (nx242), .S0 (nx223)) ;
    aoi22 ix238 (.Y (nx237), .A0 (A[4]), .A1 (B[4]), .B0 (nx56), .B1 (nx20)) ;
    xnor2 ix21 (.Y (nx20), .A0 (A[4]), .A1 (nx240)) ;
    inv01 ix241 (.Y (nx240), .A (B[4])) ;
    inv01 ix243 (.Y (nx242), .A (A[5])) ;
    xnor2 ix77 (.Y (C[7]), .A0 (nx245), .A1 (nx68)) ;
    xnor2 ix246 (.Y (nx245), .A0 (A[7]), .A1 (B[7])) ;
    mux21 ix69 (.Y (nx68), .A0 (nx248), .A1 (nx253), .S0 (nx234)) ;
    aoi22 ix249 (.Y (nx248), .A0 (A[5]), .A1 (B[5]), .B0 (nx60), .B1 (nx14)) ;
    xnor2 ix15 (.Y (nx14), .A0 (A[5]), .A1 (nx251)) ;
    inv01 ix252 (.Y (nx251), .A (B[5])) ;
    inv01 ix254 (.Y (nx253), .A (A[6])) ;
    xnor2 ix75 (.Y (C[8]), .A0 (nx256), .A1 (nx72)) ;
    xnor2 ix257 (.Y (nx256), .A0 (A[8]), .A1 (B[8])) ;
    mux21 ix73 (.Y (nx72), .A0 (nx259), .A1 (nx264), .S0 (nx245)) ;
    aoi22 ix260 (.Y (nx259), .A0 (A[6]), .A1 (B[6]), .B0 (nx64), .B1 (nx8)) ;
    xnor2 ix9 (.Y (nx8), .A0 (A[6]), .A1 (nx262)) ;
    inv01 ix263 (.Y (nx262), .A (B[6])) ;
    inv01 ix265 (.Y (nx264), .A (A[7])) ;
endmodule


module ChipMultiplier ( A, B, C ) ;

    input [4:0]A ;
    input [4:0]B ;
    output [4:0]C ;

    wire nx2, nx10, nx12, nx14, nx18, nx22, nx28, nx30, nx32, nx36, nx46, nx52, 
         nx54, nx68, nx78, nx90, nx98, nx118, nx130, nx138, nx140, nx152, nx164, 
         nx178, nx188, nx198, nx202, nx218, nx222, nx501, nx503, nx506, nx508, 
         nx511, nx513, nx515, nx517, nx519, nx526, nx531, nx535, nx537, nx539, 
         nx542, nx545, nx549, nx551, nx553, nx556, nx558, nx560, nx562, nx566, 
         nx570, nx573, nx577, nx579, nx583, nx585, nx587, nx591, nx597, nx599, 
         nx607, nx613, nx615, nx617, nx619, nx621, nx623, nx625, nx627, nx629, 
         nx631, nx633;



    nor03 ix41 (.Y (C[0]), .A0 (nx501), .A1 (nx503), .A2 (nx508)) ;
    inv01 ix502 (.Y (nx501), .A (A[0])) ;
    oai21 ix504 (.Y (nx503), .A0 (nx2), .A1 (nx621), .B0 (B[0])) ;
    nand02 ix3 (.Y (nx2), .A0 (nx607), .A1 (nx613)) ;
    inv01 ix507 (.Y (nx506), .A (A[3])) ;
    nand02 ix509 (.Y (nx508), .A0 (nx32), .A1 (nx36)) ;
    aoi221 ix33 (.Y (nx32), .A0 (nx511), .A1 (nx633), .B0 (nx517), .B1 (nx621), 
           .C0 (nx519)) ;
    nor02 ix512 (.Y (nx511), .A0 (nx617), .A1 (nx513)) ;
    inv01 ix514 (.Y (nx513), .A (A[4])) ;
    inv01 ix516 (.Y (nx515), .A (A[1])) ;
    nor02 ix518 (.Y (nx517), .A0 (nx607), .A1 (nx613)) ;
    nand03 ix520 (.Y (nx519), .A0 (nx10), .A1 (nx12), .A2 (nx14)) ;
    xnor2 ix11 (.Y (nx10), .A0 (B[3]), .A1 (B[4])) ;
    xnor2 ix13 (.Y (nx12), .A0 (B[2]), .A1 (B[1])) ;
    xnor2 ix15 (.Y (nx14), .A0 (B[3]), .A1 (B[2])) ;
    nand03 ix37 (.Y (nx36), .A0 (nx617), .A1 (nx513), .A2 (nx625)) ;
    nor02 ix75 (.Y (C[1]), .A0 (nx503), .A1 (nx526)) ;
    aoi32 ix527 (.Y (nx526), .A0 (nx52), .A1 (nx54), .A2 (nx28), .B0 (nx46), .B1 (
          nx68)) ;
    nor02 ix53 (.Y (nx52), .A0 (B[1]), .A1 (nx46)) ;
    nand02 ix47 (.Y (nx46), .A0 (nx629), .A1 (nx625)) ;
    nand03 ix55 (.Y (nx54), .A0 (nx617), .A1 (nx513), .A2 (nx531)) ;
    inv01 ix532 (.Y (nx531), .A (B[4])) ;
    aoi21 ix29 (.Y (nx28), .A0 (nx517), .A1 (nx621), .B0 (nx519)) ;
    oai32 ix69 (.Y (nx68), .A0 (nx535), .A1 (nx537), .A2 (nx539), .B0 (nx633), .B1 (
          nx542)) ;
    nand02 ix536 (.Y (nx535), .A0 (B[1]), .A1 (nx629)) ;
    inv01 ix538 (.Y (nx537), .A (nx54)) ;
    nand02 ix540 (.Y (nx539), .A0 (nx28), .A1 (nx30)) ;
    nand03 ix31 (.Y (nx30), .A0 (nx607), .A1 (nx613), .A2 (nx633)) ;
    inv01 ix543 (.Y (nx542), .A (nx28)) ;
    aoi221 ix109 (.Y (C[2]), .A0 (nx545), .A1 (nx549), .B0 (nx551), .B1 (nx560)
           , .C0 (nx562)) ;
    nand02 ix546 (.Y (nx545), .A0 (nx22), .A1 (nx90)) ;
    nand02 ix23 (.Y (nx22), .A0 (nx617), .A1 (nx513)) ;
    nand03 ix91 (.Y (nx90), .A0 (nx607), .A1 (nx613), .A2 (B[4])) ;
    nand03 ix550 (.Y (nx549), .A0 (nx2), .A1 (B[4]), .A2 (nx46)) ;
    nand02 ix552 (.Y (nx551), .A0 (nx553), .A1 (nx98)) ;
    nor02 ix554 (.Y (nx553), .A0 (nx629), .A1 (nx625)) ;
    nand02 ix99 (.Y (nx98), .A0 (nx556), .A1 (nx558)) ;
    inv01 ix557 (.Y (nx556), .A (A[2])) ;
    inv01 ix559 (.Y (nx558), .A (B[1])) ;
    xnor2 ix561 (.Y (nx560), .A0 (B[1]), .A1 (nx621)) ;
    nand03 ix563 (.Y (nx562), .A0 (nx32), .A1 (B[0]), .A2 (nx78)) ;
    nand03 ix79 (.Y (nx78), .A0 (nx501), .A1 (nx633), .A2 (nx556)) ;
    nor02 ix185 (.Y (C[3]), .A0 (nx566), .A1 (nx570)) ;
    nand03 ix567 (.Y (nx566), .A0 (nx118), .A1 (B[0]), .A2 (nx18)) ;
    nand03 ix119 (.Y (nx118), .A0 (B[4]), .A1 (nx621), .A2 (nx617)) ;
    inv01 ix19 (.Y (nx18), .A (nx519)) ;
    aoi32 ix571 (.Y (nx570), .A0 (B[4]), .A1 (nx633), .A2 (nx140), .B0 (nx30), .B1 (
          nx178)) ;
    aoi21 ix141 (.Y (nx140), .A0 (nx607), .A1 (nx613), .B0 (nx573)) ;
    aoi22 ix574 (.Y (nx573), .A0 (nx558), .A1 (nx617), .B0 (nx78), .B1 (nx130)
          ) ;
    nor02 ix131 (.Y (nx130), .A0 (nx558), .A1 (nx619)) ;
    oai22 ix179 (.Y (nx178), .A0 (nx577), .A1 (nx579), .B0 (nx531), .B1 (nx587)
          ) ;
    aoi21 ix578 (.Y (nx577), .A0 (nx556), .A1 (nx46), .B0 (nx613)) ;
    oai21 ix580 (.Y (nx579), .A0 (nx152), .A1 (nx138), .B0 (nx531)) ;
    nor02 ix153 (.Y (nx152), .A0 (nx607), .A1 (nx629)) ;
    oai22 ix139 (.Y (nx138), .A0 (nx583), .A1 (nx585), .B0 (B[1]), .B1 (nx506)
          ) ;
    nor03 ix584 (.Y (nx583), .A0 (nx629), .A1 (nx625), .A2 (nx621)) ;
    nand02 ix586 (.Y (nx585), .A0 (B[1]), .A1 (nx506)) ;
    aoi33 ix588 (.Y (nx587), .A0 (nx619), .A1 (nx501), .A2 (nx633), .B0 (nx164)
          , .B1 (nx78), .B2 (nx130)) ;
    nand02 ix165 (.Y (nx164), .A0 (nx556), .A1 (nx615)) ;
    aoi21 ix233 (.Y (C[4]), .A0 (nx591), .A1 (nx599), .B0 (nx566)) ;
    aoi33 ix592 (.Y (nx591), .A0 (nx198), .A1 (nx619), .A2 (nx202), .B0 (nx218)
          , .B1 (nx78), .B2 (nx222)) ;
    nor02 ix199 (.Y (nx198), .A0 (B[1]), .A1 (nx513)) ;
    nand03 ix203 (.Y (nx202), .A0 (nx629), .A1 (nx625), .A2 (B[4])) ;
    oai22 ix219 (.Y (nx218), .A0 (nx615), .A1 (nx585), .B0 (B[1]), .B1 (nx2)) ;
    nand02 ix223 (.Y (nx222), .A0 (nx597), .A1 (nx531)) ;
    nand02 ix598 (.Y (nx597), .A0 (nx623), .A1 (nx625)) ;
    oai21 ix600 (.Y (nx599), .A0 (nx188), .A1 (nx537), .B0 (B[1])) ;
    aoi21 ix189 (.Y (nx188), .A0 (nx631), .A1 (nx627), .B0 (nx22)) ;
    inv01 ix606 (.Y (nx607), .A (nx619)) ;
    inv01 ix612 (.Y (nx613), .A (nx513)) ;
    inv01 ix614 (.Y (nx615), .A (nx513)) ;
    inv01 ix616 (.Y (nx617), .A (nx506)) ;
    inv01 ix618 (.Y (nx619), .A (nx506)) ;
    inv01 ix620 (.Y (nx621), .A (nx556)) ;
    inv01 ix622 (.Y (nx623), .A (nx556)) ;
    inv01 ix624 (.Y (nx625), .A (nx515)) ;
    inv01 ix626 (.Y (nx627), .A (nx515)) ;
    inv01 ix628 (.Y (nx629), .A (nx501)) ;
    inv01 ix630 (.Y (nx631), .A (nx501)) ;
    inv01 ix632 (.Y (nx633), .A (A[1])) ;
endmodule


module counter_chip ( clk, chip_rdy ) ;

    input clk ;
    output chip_rdy ;

    wire nx2210, msg_7, nx2214, msg_6, msg_5, msg_4, nx2215, msg_3, msg_2, msg_1, 
         msg_0, NOT_msg_0, nx10, nx22, nx34, nx46, nx54, nx62, nx68, nx70, 
         msg_31, msg_30, msg_29, msg_26, msg_25, msg_22, msg_21, msg_18, msg_17, 
         msg_14, msg_13, msg_10, msg_9, msg_8, nx94, nx100, nx104, nx112, nx118, 
         msg_12, msg_11, nx120, nx132, nx138, nx142, nx150, nx156, msg_16, 
         msg_15, nx158, nx170, nx176, nx180, nx188, nx194, msg_20, msg_19, nx196, 
         nx208, nx214, nx218, nx226, nx232, msg_24, msg_23, nx234, nx246, nx252, 
         nx256, nx264, nx270, msg_28, msg_27, nx272, nx284, nx290, nx294, nx302, 
         nx310, nx322, nx328, nx334, nx340, nx346, nx356, nx362, nx404, nx2233, 
         nx2235, nx2240, nx2242, nx2253, nx2257, nx2261, nx2265, nx2272, nx2273, 
         nx2274, nx2275, nx2277, nx2280, nx2284, nx2288, nx2292, nx2295, nx2299, 
         nx2303, nx2309, nx2311, nx2313, nx2317, nx2319, nx2323, nx2325, nx2327, 
         nx2329, nx2333, nx2335, nx2337, nx2341, nx2343, nx2347, nx2349, nx2353, 
         nx2356, nx2361, nx2363, nx2367, nx2369, nx2373, nx2375, nx2379, nx2382, 
         nx2388, nx2390, nx2394, nx2396, nx2398, nx2402, nx2404, nx2408, nx2410, 
         nx2416, nx2418, nx2422, nx2425, nx2429, nx2434, nx2437, nx2440, nx2446, 
         nx2454, nx2456, nx2458, nx2460, nx2462, nx2464, nx2466, nx2472, nx2474, 
         nx2476, nx2478, nx2480, nx2482, nx2484, nx2486, nx2488, nx2490, nx2492, 
         nx2494, nx2496, nx2498, nx2500, nx2502, nx2504, nx2506, nx2508, nx2510, 
         nx2512, nx1, nx5, nx2514, nx2516, nx2518, nx2520, nx2522, nx2524, 
         nx2525, nx2526, nx2528, nx2530, nx2532, nx2534, nx2536, nx2538, nx2540, 
         nx2542, nx2544, nx2546, nx2548, nx2550, nx2552, nx2554, nx2556, nx2558, 
         nx2560, nx2562, nx2564, nx2566, nx2568, nx2570, nx2571, nx2572, nx2573, 
         nx2574, nx2575, nx2576;



    fake_gnd ix2211 (.Y (nx2210)) ;
    nor02 ix405 (.Y (nx404), .A0 (nx2233), .A1 (nx2446)) ;
    nand04 ix2234 (.Y (nx2233), .A0 (nx2235), .A1 (nx2242), .A2 (nx2274), .A3 (
           nx2253)) ;
    nor02 ix377 (.Y (nx2214), .A0 (nx2240), .A1 (nx2275)) ;
    nand04 ix2241 (.Y (nx2240), .A0 (nx2235), .A1 (nx2242), .A2 (nx2274), .A3 (
           msg_4)) ;
    nor03 ix53 (.Y (nx2215), .A0 (nx2253), .A1 (nx2273), .A2 (nx2261)) ;
    nand04 ix2258 (.Y (nx2257), .A0 (msg_3), .A1 (msg_2), .A2 (msg_1), .A3 (
           msg_0)) ;
    nand03 ix2262 (.Y (nx2261), .A0 (msg_2), .A1 (msg_1), .A2 (msg_0)) ;
    nand02 ix2266 (.Y (nx2265), .A0 (msg_1), .A1 (msg_0)) ;
    xnor2 ix11 (.Y (nx10), .A0 (msg_1), .A1 (NOT_msg_0)) ;
    nand03 ix2276 (.Y (nx2275), .A0 (nx2277), .A1 (nx2437), .A2 (nx2440)) ;
    nor03 ix2278 (.Y (nx2277), .A0 (nx340), .A1 (nx334), .A2 (nx328)) ;
    nand04 ix341 (.Y (nx340), .A0 (nx2280), .A1 (nx2337), .A2 (nx2343), .A3 (
           nx2349)) ;
    aoi22 ix171 (.Y (nx170), .A0 (nx156), .A1 (nx176), .B0 (nx2335), .B1 (nx2280
          )) ;
    nor03 ix157 (.Y (nx156), .A0 (nx2284), .A1 (nx2327), .A2 (nx2292)) ;
    nand03 ix2289 (.Y (nx2288), .A0 (msg_13), .A1 (nx118), .A2 (nx138)) ;
    nand03 ix2293 (.Y (nx2292), .A0 (nx118), .A1 (msg_12), .A2 (msg_11)) ;
    nor03 ix119 (.Y (nx118), .A0 (nx2295), .A1 (nx2313), .A2 (nx2303)) ;
    nand03 ix2300 (.Y (nx2299), .A0 (msg_9), .A1 (nx68), .A2 (nx100)) ;
    nand03 ix2304 (.Y (nx2303), .A0 (nx68), .A1 (msg_8), .A2 (msg_7)) ;
    aoi22 ix95 (.Y (nx94), .A0 (nx68), .A1 (nx100), .B0 (nx2311), .B1 (nx2309)
          ) ;
    nor02 ix101 (.Y (nx100), .A0 (nx2309), .A1 (nx2235)) ;
    nand02 ix2312 (.Y (nx2311), .A0 (msg_7), .A1 (nx68)) ;
    aoi22 ix133 (.Y (nx132), .A0 (nx118), .A1 (nx138), .B0 (nx2325), .B1 (nx2317
          )) ;
    nor02 ix139 (.Y (nx138), .A0 (nx2317), .A1 (nx2319)) ;
    nand04 ix2324 (.Y (nx2323), .A0 (msg_10), .A1 (msg_9), .A2 (nx68), .A3 (
           nx100)) ;
    nand02 ix2326 (.Y (nx2325), .A0 (msg_11), .A1 (nx118)) ;
    nor02 ix177 (.Y (nx176), .A0 (nx2280), .A1 (nx2329)) ;
    nand04 ix2334 (.Y (nx2333), .A0 (msg_14), .A1 (msg_13), .A2 (nx118), .A3 (
           nx138)) ;
    nand02 ix2336 (.Y (nx2335), .A0 (msg_15), .A1 (nx156)) ;
    nand03 ix2342 (.Y (nx2341), .A0 (nx156), .A1 (msg_16), .A2 (msg_15)) ;
    nand03 ix2348 (.Y (nx2347), .A0 (msg_17), .A1 (nx156), .A2 (nx176)) ;
    nand04 ix2354 (.Y (nx2353), .A0 (msg_18), .A1 (msg_17), .A2 (nx156), .A3 (
           nx176)) ;
    nand04 ix335 (.Y (nx334), .A0 (nx2356), .A1 (nx2363), .A2 (nx2369), .A3 (
           nx2375)) ;
    aoi22 ix209 (.Y (nx208), .A0 (nx194), .A1 (nx214), .B0 (nx2361), .B1 (nx2356
          )) ;
    nor03 ix195 (.Y (nx194), .A0 (nx2343), .A1 (nx2337), .A2 (nx2341)) ;
    nor02 ix215 (.Y (nx214), .A0 (nx2356), .A1 (nx2349)) ;
    nand02 ix2362 (.Y (nx2361), .A0 (msg_19), .A1 (nx194)) ;
    nand03 ix2368 (.Y (nx2367), .A0 (nx194), .A1 (msg_20), .A2 (msg_19)) ;
    nand03 ix2374 (.Y (nx2373), .A0 (msg_21), .A1 (nx194), .A2 (nx214)) ;
    nand04 ix2380 (.Y (nx2379), .A0 (msg_22), .A1 (msg_21), .A2 (nx194), .A3 (
           nx214)) ;
    nand03 ix329 (.Y (nx328), .A0 (nx2382), .A1 (nx2410), .A2 (nx2425)) ;
    nor03 ix2383 (.Y (nx2382), .A0 (msg_24), .A1 (msg_25), .A2 (nx322)) ;
    aoi22 ix247 (.Y (nx246), .A0 (nx232), .A1 (nx252), .B0 (nx2390), .B1 (nx2388
          )) ;
    nor03 ix233 (.Y (nx232), .A0 (nx2369), .A1 (nx2363), .A2 (nx2367)) ;
    nor02 ix253 (.Y (nx252), .A0 (nx2388), .A1 (nx2375)) ;
    nand02 ix2391 (.Y (nx2390), .A0 (msg_23), .A1 (nx232)) ;
    nand03 ix2395 (.Y (nx2394), .A0 (nx232), .A1 (msg_24), .A2 (msg_23)) ;
    nand02 ix323 (.Y (nx322), .A0 (nx2398), .A1 (nx2404)) ;
    nand03 ix2403 (.Y (nx2402), .A0 (msg_25), .A1 (nx232), .A2 (nx252)) ;
    nand04 ix2409 (.Y (nx2408), .A0 (msg_26), .A1 (msg_25), .A2 (nx232), .A3 (
           nx252)) ;
    nor02 ix2411 (.Y (nx2410), .A0 (msg_28), .A1 (msg_29)) ;
    aoi22 ix285 (.Y (nx284), .A0 (nx270), .A1 (nx290), .B0 (nx2418), .B1 (nx2416
          )) ;
    nor03 ix271 (.Y (nx270), .A0 (nx2398), .A1 (nx2396), .A2 (nx2394)) ;
    nor02 ix291 (.Y (nx290), .A0 (nx2416), .A1 (nx2404)) ;
    nand02 ix2419 (.Y (nx2418), .A0 (msg_27), .A1 (nx270)) ;
    xnor2 ix295 (.Y (nx294), .A0 (msg_29), .A1 (nx2422)) ;
    nand03 ix2423 (.Y (nx2422), .A0 (nx270), .A1 (msg_28), .A2 (msg_27)) ;
    nor02 ix2426 (.Y (nx2425), .A0 (msg_30), .A1 (msg_31)) ;
    xnor2 ix303 (.Y (nx302), .A0 (msg_30), .A1 (nx2429)) ;
    nand03 ix2430 (.Y (nx2429), .A0 (msg_29), .A1 (nx270), .A2 (nx290)) ;
    xnor2 ix311 (.Y (nx310), .A0 (msg_31), .A1 (nx2434)) ;
    nand04 ix2435 (.Y (nx2434), .A0 (msg_30), .A1 (msg_29), .A2 (nx270), .A3 (
           nx290)) ;
    nor03 ix2438 (.Y (nx2437), .A0 (msg_0), .A1 (msg_1), .A2 (nx346)) ;
    nand02 ix347 (.Y (nx346), .A0 (nx2272), .A1 (nx2273)) ;
    nor02 ix2441 (.Y (nx2440), .A0 (nx362), .A1 (nx356)) ;
    nand04 ix363 (.Y (nx362), .A0 (nx2309), .A1 (nx2313), .A2 (nx2295), .A3 (
           nx2319)) ;
    nand04 ix357 (.Y (nx356), .A0 (nx2317), .A1 (nx2327), .A2 (nx2284), .A3 (
           nx2329)) ;
    nand03 ix2447 (.Y (nx2446), .A0 (nx2277), .A1 (nx2437), .A2 (nx2440)) ;
    inv01 ix2453 (.Y (nx2454), .A (nx2214)) ;
    inv01 ix2455 (.Y (nx2456), .A (nx2454)) ;
    inv01 ix2457 (.Y (nx2458), .A (nx2454)) ;
    inv01 ix2459 (.Y (nx2460), .A (nx2454)) ;
    inv01 ix2461 (.Y (nx2462), .A (nx2454)) ;
    inv01 ix2463 (.Y (nx2464), .A (nx2454)) ;
    inv01 ix2465 (.Y (nx2466), .A (nx2454)) ;
    xnor2 ix71 (.Y (nx70), .A0 (nx2235), .A1 (nx2472)) ;
    xnor2 ix63 (.Y (nx62), .A0 (nx2242), .A1 (nx2474)) ;
    nor02 ix2247 (.Y (nx2474), .A0 (nx2274), .A1 (nx2476)) ;
    inv01 ix2475 (.Y (nx2476), .A (nx2215)) ;
    xnor2 ix2251 (.Y (nx54), .A0 (nx2274), .A1 (nx2215)) ;
    xnor2 ix47 (.Y (nx46), .A0 (nx2253), .A1 (nx2478)) ;
    inv01 ix2477 (.Y (nx2478), .A (nx2257)) ;
    xnor2 ix35 (.Y (nx34), .A0 (nx2273), .A1 (nx2480)) ;
    inv01 ix2479 (.Y (nx2480), .A (nx2261)) ;
    xnor2 ix23 (.Y (nx22), .A0 (nx2272), .A1 (nx2482)) ;
    inv01 ix2481 (.Y (nx2482), .A (nx2265)) ;
    xnor2 ix151 (.Y (nx150), .A0 (nx2284), .A1 (nx2484)) ;
    inv01 ix2483 (.Y (nx2484), .A (nx2288)) ;
    xnor2 ix143 (.Y (nx142), .A0 (nx2327), .A1 (nx2486)) ;
    inv01 ix2485 (.Y (nx2486), .A (nx2292)) ;
    xnor2 ix113 (.Y (nx112), .A0 (nx2295), .A1 (nx2488)) ;
    inv01 ix2487 (.Y (nx2488), .A (nx2299)) ;
    xnor2 ix105 (.Y (nx104), .A0 (nx2313), .A1 (nx2490)) ;
    inv01 ix2489 (.Y (nx2490), .A (nx2303)) ;
    and04 ix69 (.Y (nx68), .A0 (msg_6), .A1 (msg_5), .A2 (msg_4), .A3 (nx2478)
          ) ;
    xnor2 ix121 (.Y (nx120), .A0 (nx2319), .A1 (nx2492)) ;
    inv01 ix2491 (.Y (nx2492), .A (nx2323)) ;
    xnor2 ix159 (.Y (nx158), .A0 (nx2329), .A1 (nx2494)) ;
    inv01 ix2493 (.Y (nx2494), .A (nx2333)) ;
    xnor2 ix181 (.Y (nx180), .A0 (nx2337), .A1 (nx2496)) ;
    inv01 ix2495 (.Y (nx2496), .A (nx2341)) ;
    xnor2 ix189 (.Y (nx188), .A0 (nx2343), .A1 (nx2498)) ;
    inv01 ix2497 (.Y (nx2498), .A (nx2347)) ;
    xnor2 ix197 (.Y (nx196), .A0 (nx2349), .A1 (nx2500)) ;
    inv01 ix2499 (.Y (nx2500), .A (nx2353)) ;
    xnor2 ix219 (.Y (nx218), .A0 (nx2363), .A1 (nx2502)) ;
    inv01 ix2501 (.Y (nx2502), .A (nx2367)) ;
    xnor2 ix227 (.Y (nx226), .A0 (nx2369), .A1 (nx2504)) ;
    inv01 ix2503 (.Y (nx2504), .A (nx2373)) ;
    xnor2 ix235 (.Y (nx234), .A0 (nx2375), .A1 (nx2506)) ;
    inv01 ix2505 (.Y (nx2506), .A (nx2379)) ;
    xnor2 ix257 (.Y (nx256), .A0 (nx2396), .A1 (nx2508)) ;
    inv01 ix2507 (.Y (nx2508), .A (nx2394)) ;
    xnor2 ix265 (.Y (nx264), .A0 (nx2398), .A1 (nx2510)) ;
    inv01 ix2509 (.Y (nx2510), .A (nx2402)) ;
    xnor2 ix273 (.Y (nx272), .A0 (nx2404), .A1 (nx2512)) ;
    inv01 ix2511 (.Y (nx2512), .A (nx2408)) ;
    nor03 ix2445 (.Y (nx2472), .A0 (nx2242), .A1 (nx2274), .A2 (nx2476)) ;
    latchs_ni lat_chip_rdy_u1 (.QB (nx5), .D (nx2210), .CLK (nx404), .S (nx2466)
              ) ;
    inv02 lat_chip_rdy_u2 (.Y (chip_rdy), .A (nx5)) ;
    buf02 lat_chip_rdy_u3 (.Y (nx1), .A (nx5)) ;
    latchr lat_msg_7__u1 (.QB (nx2514), .D (nx70), .CLK (clk), .R (nx2466)) ;
    inv01 lat_msg_7__u2 (.Y (msg_7), .A (nx2514)) ;
    buf02 lat_msg_7__u3 (.Y (nx2235), .A (nx2514)) ;
    latchr lat_msg_6__u1 (.QB (nx2516), .D (nx62), .CLK (clk), .R (nx2456)) ;
    inv01 lat_msg_6__u2 (.Y (msg_6), .A (nx2516)) ;
    buf02 lat_msg_6__u3 (.Y (nx2242), .A (nx2516)) ;
    latchr lat_msg_5__u1 (.QB (nx2518), .D (nx54), .CLK (clk), .R (nx2458)) ;
    inv01 lat_msg_5__u2 (.Y (msg_5), .A (nx2518)) ;
    buf02 lat_msg_5__u3 (.Y (nx2274), .A (nx2518)) ;
    latchr lat_msg_4__u1 (.QB (nx2520), .D (nx46), .CLK (clk), .R (nx2456)) ;
    inv01 lat_msg_4__u2 (.Y (msg_4), .A (nx2520)) ;
    buf02 lat_msg_4__u3 (.Y (nx2253), .A (nx2520)) ;
    latchr lat_msg_3__u1 (.QB (nx2522), .D (nx34), .CLK (clk), .R (nx2456)) ;
    inv01 lat_msg_3__u2 (.Y (msg_3), .A (nx2522)) ;
    buf02 lat_msg_3__u3 (.Y (nx2273), .A (nx2522)) ;
    latchr lat_msg_2__u1 (.QB (nx2524), .D (nx22), .CLK (clk), .R (nx2456)) ;
    inv01 lat_msg_2__u2 (.Y (msg_2), .A (nx2524)) ;
    buf02 lat_msg_2__u3 (.Y (nx2272), .A (nx2524)) ;
    latchr lat_msg_1__u1 (.QB (nx2526), .D (nx10), .CLK (clk), .R (nx2456)) ;
    inv01 lat_msg_1__u2 (.Y (msg_1), .A (nx2526)) ;
    buf02 lat_msg_1__u3 (.Y (nx2525), .A (nx2526)) ;
    latchr lat_msg_0__u1 (.QB (nx2528), .D (NOT_msg_0), .CLK (clk), .R (nx2456)
           ) ;
    inv01 lat_msg_0__u2 (.Y (msg_0), .A (nx2528)) ;
    buf02 lat_msg_0__u3 (.Y (NOT_msg_0), .A (nx2528)) ;
    latchr lat_msg_16__u1 (.QB (nx2530), .D (nx170), .CLK (clk), .R (nx2460)) ;
    inv01 lat_msg_16__u2 (.Y (msg_16), .A (nx2530)) ;
    buf02 lat_msg_16__u3 (.Y (nx2280), .A (nx2530)) ;
    latchr lat_msg_14__u1 (.QB (nx2532), .D (nx150), .CLK (clk), .R (nx2458)) ;
    inv01 lat_msg_14__u2 (.Y (msg_14), .A (nx2532)) ;
    buf02 lat_msg_14__u3 (.Y (nx2284), .A (nx2532)) ;
    latchr lat_msg_13__u1 (.QB (nx2534), .D (nx142), .CLK (clk), .R (nx2460)) ;
    inv01 lat_msg_13__u2 (.Y (msg_13), .A (nx2534)) ;
    buf02 lat_msg_13__u3 (.Y (nx2327), .A (nx2534)) ;
    latchr lat_msg_10__u1 (.QB (nx2536), .D (nx112), .CLK (clk), .R (nx2458)) ;
    inv01 lat_msg_10__u2 (.Y (msg_10), .A (nx2536)) ;
    buf02 lat_msg_10__u3 (.Y (nx2295), .A (nx2536)) ;
    latchr lat_msg_9__u1 (.QB (nx2538), .D (nx104), .CLK (clk), .R (nx2458)) ;
    inv01 lat_msg_9__u2 (.Y (msg_9), .A (nx2538)) ;
    buf02 lat_msg_9__u3 (.Y (nx2313), .A (nx2538)) ;
    latchr lat_msg_8__u1 (.QB (nx2540), .D (nx94), .CLK (clk), .R (nx2458)) ;
    inv01 lat_msg_8__u2 (.Y (msg_8), .A (nx2540)) ;
    buf02 lat_msg_8__u3 (.Y (nx2309), .A (nx2540)) ;
    latchr lat_msg_12__u1 (.QB (nx2542), .D (nx132), .CLK (clk), .R (nx2458)) ;
    inv01 lat_msg_12__u2 (.Y (msg_12), .A (nx2542)) ;
    buf02 lat_msg_12__u3 (.Y (nx2317), .A (nx2542)) ;
    latchr lat_msg_11__u1 (.QB (nx2544), .D (nx120), .CLK (clk), .R (nx2460)) ;
    inv01 lat_msg_11__u2 (.Y (msg_11), .A (nx2544)) ;
    buf02 lat_msg_11__u3 (.Y (nx2319), .A (nx2544)) ;
    latchr lat_msg_15__u1 (.QB (nx2546), .D (nx158), .CLK (clk), .R (nx2460)) ;
    inv01 lat_msg_15__u2 (.Y (msg_15), .A (nx2546)) ;
    buf02 lat_msg_15__u3 (.Y (nx2329), .A (nx2546)) ;
    latchr lat_msg_17__u1 (.QB (nx2548), .D (nx180), .CLK (clk), .R (nx2460)) ;
    inv01 lat_msg_17__u2 (.Y (msg_17), .A (nx2548)) ;
    buf02 lat_msg_17__u3 (.Y (nx2337), .A (nx2548)) ;
    latchr lat_msg_18__u1 (.QB (nx2550), .D (nx188), .CLK (clk), .R (nx2460)) ;
    inv01 lat_msg_18__u2 (.Y (msg_18), .A (nx2550)) ;
    buf02 lat_msg_18__u3 (.Y (nx2343), .A (nx2550)) ;
    latchr lat_msg_19__u1 (.QB (nx2552), .D (nx196), .CLK (clk), .R (nx2462)) ;
    inv01 lat_msg_19__u2 (.Y (msg_19), .A (nx2552)) ;
    buf02 lat_msg_19__u3 (.Y (nx2349), .A (nx2552)) ;
    latchr lat_msg_20__u1 (.QB (nx2554), .D (nx208), .CLK (clk), .R (nx2462)) ;
    inv01 lat_msg_20__u2 (.Y (msg_20), .A (nx2554)) ;
    buf02 lat_msg_20__u3 (.Y (nx2356), .A (nx2554)) ;
    latchr lat_msg_21__u1 (.QB (nx2556), .D (nx218), .CLK (clk), .R (nx2462)) ;
    inv01 lat_msg_21__u2 (.Y (msg_21), .A (nx2556)) ;
    buf02 lat_msg_21__u3 (.Y (nx2363), .A (nx2556)) ;
    latchr lat_msg_22__u1 (.QB (nx2558), .D (nx226), .CLK (clk), .R (nx2462)) ;
    inv01 lat_msg_22__u2 (.Y (msg_22), .A (nx2558)) ;
    buf02 lat_msg_22__u3 (.Y (nx2369), .A (nx2558)) ;
    latchr lat_msg_23__u1 (.QB (nx2560), .D (nx234), .CLK (clk), .R (nx2462)) ;
    inv01 lat_msg_23__u2 (.Y (msg_23), .A (nx2560)) ;
    buf02 lat_msg_23__u3 (.Y (nx2375), .A (nx2560)) ;
    latchr lat_msg_24__u1 (.QB (nx2562), .D (nx246), .CLK (clk), .R (nx2462)) ;
    inv01 lat_msg_24__u2 (.Y (msg_24), .A (nx2562)) ;
    buf02 lat_msg_24__u3 (.Y (nx2388), .A (nx2562)) ;
    latchr lat_msg_25__u1 (.QB (nx2564), .D (nx256), .CLK (clk), .R (nx2464)) ;
    inv01 lat_msg_25__u2 (.Y (msg_25), .A (nx2564)) ;
    buf02 lat_msg_25__u3 (.Y (nx2396), .A (nx2564)) ;
    latchr lat_msg_26__u1 (.QB (nx2566), .D (nx264), .CLK (clk), .R (nx2464)) ;
    inv01 lat_msg_26__u2 (.Y (msg_26), .A (nx2566)) ;
    buf02 lat_msg_26__u3 (.Y (nx2398), .A (nx2566)) ;
    latchr lat_msg_27__u1 (.QB (nx2568), .D (nx272), .CLK (clk), .R (nx2464)) ;
    inv01 lat_msg_27__u2 (.Y (msg_27), .A (nx2568)) ;
    buf02 lat_msg_27__u3 (.Y (nx2404), .A (nx2568)) ;
    latchr lat_msg_28__u1 (.QB (nx2570), .D (nx284), .CLK (clk), .R (nx2464)) ;
    inv01 lat_msg_28__u2 (.Y (msg_28), .A (nx2570)) ;
    buf02 lat_msg_28__u3 (.Y (nx2416), .A (nx2570)) ;
    latchr lat_msg_29__u1 (.QB (nx2572), .D (nx294), .CLK (clk), .R (nx2464)) ;
    inv01 lat_msg_29__u2 (.Y (msg_29), .A (nx2572)) ;
    buf02 lat_msg_29__u3 (.Y (nx2571), .A (nx2572)) ;
    latchr lat_msg_30__u1 (.QB (nx2574), .D (nx302), .CLK (clk), .R (nx2464)) ;
    inv01 lat_msg_30__u2 (.Y (msg_30), .A (nx2574)) ;
    buf02 lat_msg_30__u3 (.Y (nx2573), .A (nx2574)) ;
    latchr lat_msg_31__u1 (.QB (nx2576), .D (nx310), .CLK (clk), .R (nx2466)) ;
    inv01 lat_msg_31__u2 (.Y (msg_31), .A (nx2576)) ;
    buf02 lat_msg_31__u3 (.Y (nx2575), .A (nx2576)) ;
endmodule


module sipo ( clr, clk, en, ser_data, pal_data_15__4, pal_data_15__3, 
              pal_data_15__2, pal_data_15__1, pal_data_15__0, pal_data_14__4, 
              pal_data_14__3, pal_data_14__2, pal_data_14__1, pal_data_14__0, 
              pal_data_13__4, pal_data_13__3, pal_data_13__2, pal_data_13__1, 
              pal_data_13__0, pal_data_12__4, pal_data_12__3, pal_data_12__2, 
              pal_data_12__1, pal_data_12__0, pal_data_11__4, pal_data_11__3, 
              pal_data_11__2, pal_data_11__1, pal_data_11__0, pal_data_10__4, 
              pal_data_10__3, pal_data_10__2, pal_data_10__1, pal_data_10__0, 
              pal_data_9__4, pal_data_9__3, pal_data_9__2, pal_data_9__1, 
              pal_data_9__0, pal_data_8__4, pal_data_8__3, pal_data_8__2, 
              pal_data_8__1, pal_data_8__0, pal_data_7__4, pal_data_7__3, 
              pal_data_7__2, pal_data_7__1, pal_data_7__0, pal_data_6__4, 
              pal_data_6__3, pal_data_6__2, pal_data_6__1, pal_data_6__0, 
              pal_data_5__4, pal_data_5__3, pal_data_5__2, pal_data_5__1, 
              pal_data_5__0, pal_data_4__4, pal_data_4__3, pal_data_4__2, 
              pal_data_4__1, pal_data_4__0, pal_data_3__4, pal_data_3__3, 
              pal_data_3__2, pal_data_3__1, pal_data_3__0, pal_data_2__4, 
              pal_data_2__3, pal_data_2__2, pal_data_2__1, pal_data_2__0, 
              pal_data_1__4, pal_data_1__3, pal_data_1__2, pal_data_1__1, 
              pal_data_1__0, pal_data_0__4, pal_data_0__3, pal_data_0__2, 
              pal_data_0__1, pal_data_0__0 ) ;

    input clr ;
    input clk ;
    input en ;
    input [4:0]ser_data ;
    output pal_data_15__4 ;
    output pal_data_15__3 ;
    output pal_data_15__2 ;
    output pal_data_15__1 ;
    output pal_data_15__0 ;
    output pal_data_14__4 ;
    output pal_data_14__3 ;
    output pal_data_14__2 ;
    output pal_data_14__1 ;
    output pal_data_14__0 ;
    output pal_data_13__4 ;
    output pal_data_13__3 ;
    output pal_data_13__2 ;
    output pal_data_13__1 ;
    output pal_data_13__0 ;
    output pal_data_12__4 ;
    output pal_data_12__3 ;
    output pal_data_12__2 ;
    output pal_data_12__1 ;
    output pal_data_12__0 ;
    output pal_data_11__4 ;
    output pal_data_11__3 ;
    output pal_data_11__2 ;
    output pal_data_11__1 ;
    output pal_data_11__0 ;
    output pal_data_10__4 ;
    output pal_data_10__3 ;
    output pal_data_10__2 ;
    output pal_data_10__1 ;
    output pal_data_10__0 ;
    output pal_data_9__4 ;
    output pal_data_9__3 ;
    output pal_data_9__2 ;
    output pal_data_9__1 ;
    output pal_data_9__0 ;
    output pal_data_8__4 ;
    output pal_data_8__3 ;
    output pal_data_8__2 ;
    output pal_data_8__1 ;
    output pal_data_8__0 ;
    output pal_data_7__4 ;
    output pal_data_7__3 ;
    output pal_data_7__2 ;
    output pal_data_7__1 ;
    output pal_data_7__0 ;
    output pal_data_6__4 ;
    output pal_data_6__3 ;
    output pal_data_6__2 ;
    output pal_data_6__1 ;
    output pal_data_6__0 ;
    output pal_data_5__4 ;
    output pal_data_5__3 ;
    output pal_data_5__2 ;
    output pal_data_5__1 ;
    output pal_data_5__0 ;
    output pal_data_4__4 ;
    output pal_data_4__3 ;
    output pal_data_4__2 ;
    output pal_data_4__1 ;
    output pal_data_4__0 ;
    output pal_data_3__4 ;
    output pal_data_3__3 ;
    output pal_data_3__2 ;
    output pal_data_3__1 ;
    output pal_data_3__0 ;
    output pal_data_2__4 ;
    output pal_data_2__3 ;
    output pal_data_2__2 ;
    output pal_data_2__1 ;
    output pal_data_2__0 ;
    output pal_data_1__4 ;
    output pal_data_1__3 ;
    output pal_data_1__2 ;
    output pal_data_1__1 ;
    output pal_data_1__0 ;
    output pal_data_0__4 ;
    output pal_data_0__3 ;
    output pal_data_0__2 ;
    output pal_data_0__1 ;
    output pal_data_0__0 ;

    wire temp_reg_0__0, temp_reg_1__0, temp_reg_2__0, temp_reg_3__0, 
         temp_reg_4__0, temp_reg_5__0, temp_reg_6__0, temp_reg_7__0, 
         temp_reg_8__0, temp_reg_9__0, temp_reg_10__0, temp_reg_11__0, 
         temp_reg_12__0, temp_reg_13__0, temp_reg_14__0, temp_reg_15__0, nx2, 
         temp_reg_0__1, temp_reg_1__1, temp_reg_2__1, temp_reg_3__1, 
         temp_reg_4__1, temp_reg_5__1, temp_reg_6__1, temp_reg_7__1, 
         temp_reg_8__1, temp_reg_9__1, temp_reg_10__1, temp_reg_11__1, 
         temp_reg_12__1, temp_reg_13__1, temp_reg_14__1, temp_reg_15__1, 
         temp_reg_0__2, temp_reg_1__2, temp_reg_2__2, temp_reg_3__2, 
         temp_reg_4__2, temp_reg_5__2, temp_reg_6__2, temp_reg_7__2, 
         temp_reg_8__2, temp_reg_9__2, temp_reg_10__2, temp_reg_11__2, 
         temp_reg_12__2, temp_reg_13__2, temp_reg_14__2, temp_reg_15__2, 
         temp_reg_0__3, temp_reg_1__3, temp_reg_2__3, temp_reg_3__3, 
         temp_reg_4__3, temp_reg_5__3, temp_reg_6__3, temp_reg_7__3, 
         temp_reg_8__3, temp_reg_9__3, temp_reg_10__3, temp_reg_11__3, 
         temp_reg_12__3, temp_reg_13__3, temp_reg_14__3, temp_reg_15__3, 
         temp_reg_0__4, temp_reg_1__4, temp_reg_2__4, temp_reg_3__4, 
         temp_reg_4__4, temp_reg_5__4, temp_reg_6__4, temp_reg_7__4, 
         temp_reg_8__4, temp_reg_9__4, temp_reg_10__4, temp_reg_11__4, 
         temp_reg_12__4, temp_reg_13__4, temp_reg_14__4, temp_reg_15__4, nx1967, 
         nx1989, nx2008, nx2027, nx2046, nx2065, nx2068, nx2071, nx2074, nx2077, 
         nx2080, nx2083, nx2086, nx2089, nx2092, nx2095, nx2098, nx2101, nx2104, 
         nx2107, nx2110, nx2113, nx2116, nx2119, nx2122, nx2125, nx2128, nx2131, 
         nx2134, nx2137, nx2140, nx2143, nx2146, nx2149, nx2152, nx2155, nx2158, 
         nx2161, nx2164, nx2167, nx2170, nx2173, nx2176, nx2179, nx2182, nx2185, 
         nx2188, nx2191, nx2194, nx2197, nx2200, nx2203, nx2206, nx2209, nx2212, 
         nx2215, nx2218, nx2221, nx2224, nx2227, nx2230, nx2233, nx2236, nx2239, 
         nx2242, nx2245, nx2248, nx2251, nx2254, nx2257, nx2260, nx2263, nx2266, 
         nx2269, nx2272, nx2275, nx2278, nx2281, nx2284, nx2287, nx2294, nx2296, 
         nx2298, nx2300, nx2302, nx2304, nx2306, nx2308, nx2310, nx2312, nx2314, 
         nx2316, nx2318, nx2320, nx2322, nx2324, nx2326, nx2332, nx2334, nx2336, 
         nx2338, nx2340, nx2342, nx2344, nx2346, nx2348, nx2350, nx2352, nx2354, 
         nx2356, nx2358, nx2360, nx2362, nx2364;



    inv01 ix101 (.Y (pal_data_0__0), .A (nx1967)) ;
    nand02 ix1968 (.Y (nx1967), .A0 (nx2334), .A1 (temp_reg_0__0)) ;
    latch lat_temp_reg_0__0 (.Q (temp_reg_0__0), .D (temp_reg_1__0), .CLK (
          nx2300)) ;
    latch lat_temp_reg_1__0 (.Q (temp_reg_1__0), .D (temp_reg_2__0), .CLK (
          nx2300)) ;
    latch lat_temp_reg_2__0 (.Q (temp_reg_2__0), .D (temp_reg_3__0), .CLK (
          nx2300)) ;
    latch lat_temp_reg_3__0 (.Q (temp_reg_3__0), .D (temp_reg_4__0), .CLK (
          nx2300)) ;
    latch lat_temp_reg_4__0 (.Q (temp_reg_4__0), .D (temp_reg_5__0), .CLK (
          nx2298)) ;
    latch lat_temp_reg_5__0 (.Q (temp_reg_5__0), .D (temp_reg_6__0), .CLK (
          nx2298)) ;
    latch lat_temp_reg_6__0 (.Q (temp_reg_6__0), .D (temp_reg_7__0), .CLK (
          nx2298)) ;
    latch lat_temp_reg_7__0 (.Q (temp_reg_7__0), .D (temp_reg_8__0), .CLK (
          nx2298)) ;
    latch lat_temp_reg_8__0 (.Q (temp_reg_8__0), .D (temp_reg_9__0), .CLK (
          nx2298)) ;
    latch lat_temp_reg_9__0 (.Q (temp_reg_9__0), .D (temp_reg_10__0), .CLK (
          nx2298)) ;
    latch lat_temp_reg_10__0 (.Q (temp_reg_10__0), .D (temp_reg_11__0), .CLK (
          nx2296)) ;
    latch lat_temp_reg_11__0 (.Q (temp_reg_11__0), .D (temp_reg_12__0), .CLK (
          nx2296)) ;
    latch lat_temp_reg_12__0 (.Q (temp_reg_12__0), .D (temp_reg_13__0), .CLK (
          nx2296)) ;
    latch lat_temp_reg_13__0 (.Q (temp_reg_13__0), .D (temp_reg_14__0), .CLK (
          nx2296)) ;
    latch lat_temp_reg_14__0 (.Q (temp_reg_14__0), .D (temp_reg_15__0), .CLK (
          nx2296)) ;
    latch lat_temp_reg_15__0 (.Q (temp_reg_15__0), .D (ser_data[0]), .CLK (
          nx2296)) ;
    inv01 ix199 (.Y (pal_data_0__1), .A (nx1989)) ;
    nand02 ix1990 (.Y (nx1989), .A0 (nx2334), .A1 (temp_reg_0__1)) ;
    latch lat_temp_reg_0__1 (.Q (temp_reg_0__1), .D (temp_reg_1__1), .CLK (
          nx2306)) ;
    latch lat_temp_reg_1__1 (.Q (temp_reg_1__1), .D (temp_reg_2__1), .CLK (
          nx2306)) ;
    latch lat_temp_reg_2__1 (.Q (temp_reg_2__1), .D (temp_reg_3__1), .CLK (
          nx2304)) ;
    latch lat_temp_reg_3__1 (.Q (temp_reg_3__1), .D (temp_reg_4__1), .CLK (
          nx2304)) ;
    latch lat_temp_reg_4__1 (.Q (temp_reg_4__1), .D (temp_reg_5__1), .CLK (
          nx2304)) ;
    latch lat_temp_reg_5__1 (.Q (temp_reg_5__1), .D (temp_reg_6__1), .CLK (
          nx2304)) ;
    latch lat_temp_reg_6__1 (.Q (temp_reg_6__1), .D (temp_reg_7__1), .CLK (
          nx2304)) ;
    latch lat_temp_reg_7__1 (.Q (temp_reg_7__1), .D (temp_reg_8__1), .CLK (
          nx2304)) ;
    latch lat_temp_reg_8__1 (.Q (temp_reg_8__1), .D (temp_reg_9__1), .CLK (
          nx2302)) ;
    latch lat_temp_reg_9__1 (.Q (temp_reg_9__1), .D (temp_reg_10__1), .CLK (
          nx2302)) ;
    latch lat_temp_reg_10__1 (.Q (temp_reg_10__1), .D (temp_reg_11__1), .CLK (
          nx2302)) ;
    latch lat_temp_reg_11__1 (.Q (temp_reg_11__1), .D (temp_reg_12__1), .CLK (
          nx2302)) ;
    latch lat_temp_reg_12__1 (.Q (temp_reg_12__1), .D (temp_reg_13__1), .CLK (
          nx2302)) ;
    latch lat_temp_reg_13__1 (.Q (temp_reg_13__1), .D (temp_reg_14__1), .CLK (
          nx2302)) ;
    latch lat_temp_reg_14__1 (.Q (temp_reg_14__1), .D (temp_reg_15__1), .CLK (
          nx2300)) ;
    latch lat_temp_reg_15__1 (.Q (temp_reg_15__1), .D (ser_data[1]), .CLK (
          nx2300)) ;
    inv01 ix297 (.Y (pal_data_0__2), .A (nx2008)) ;
    nand02 ix2009 (.Y (nx2008), .A0 (nx2334), .A1 (temp_reg_0__2)) ;
    latch lat_temp_reg_0__2 (.Q (temp_reg_0__2), .D (temp_reg_1__2), .CLK (
          nx2310)) ;
    latch lat_temp_reg_1__2 (.Q (temp_reg_1__2), .D (temp_reg_2__2), .CLK (
          nx2310)) ;
    latch lat_temp_reg_2__2 (.Q (temp_reg_2__2), .D (temp_reg_3__2), .CLK (
          nx2310)) ;
    latch lat_temp_reg_3__2 (.Q (temp_reg_3__2), .D (temp_reg_4__2), .CLK (
          nx2310)) ;
    latch lat_temp_reg_4__2 (.Q (temp_reg_4__2), .D (temp_reg_5__2), .CLK (
          nx2310)) ;
    latch lat_temp_reg_5__2 (.Q (temp_reg_5__2), .D (temp_reg_6__2), .CLK (
          nx2310)) ;
    latch lat_temp_reg_6__2 (.Q (temp_reg_6__2), .D (temp_reg_7__2), .CLK (
          nx2308)) ;
    latch lat_temp_reg_7__2 (.Q (temp_reg_7__2), .D (temp_reg_8__2), .CLK (
          nx2308)) ;
    latch lat_temp_reg_8__2 (.Q (temp_reg_8__2), .D (temp_reg_9__2), .CLK (
          nx2308)) ;
    latch lat_temp_reg_9__2 (.Q (temp_reg_9__2), .D (temp_reg_10__2), .CLK (
          nx2308)) ;
    latch lat_temp_reg_10__2 (.Q (temp_reg_10__2), .D (temp_reg_11__2), .CLK (
          nx2308)) ;
    latch lat_temp_reg_11__2 (.Q (temp_reg_11__2), .D (temp_reg_12__2), .CLK (
          nx2308)) ;
    latch lat_temp_reg_12__2 (.Q (temp_reg_12__2), .D (temp_reg_13__2), .CLK (
          nx2306)) ;
    latch lat_temp_reg_13__2 (.Q (temp_reg_13__2), .D (temp_reg_14__2), .CLK (
          nx2306)) ;
    latch lat_temp_reg_14__2 (.Q (temp_reg_14__2), .D (temp_reg_15__2), .CLK (
          nx2306)) ;
    latch lat_temp_reg_15__2 (.Q (temp_reg_15__2), .D (ser_data[2]), .CLK (
          nx2306)) ;
    inv01 ix395 (.Y (pal_data_0__3), .A (nx2027)) ;
    nand02 ix2028 (.Y (nx2027), .A0 (nx2334), .A1 (temp_reg_0__3)) ;
    latch lat_temp_reg_0__3 (.Q (temp_reg_0__3), .D (temp_reg_1__3), .CLK (
          nx2316)) ;
    latch lat_temp_reg_1__3 (.Q (temp_reg_1__3), .D (temp_reg_2__3), .CLK (
          nx2316)) ;
    latch lat_temp_reg_2__3 (.Q (temp_reg_2__3), .D (temp_reg_3__3), .CLK (
          nx2316)) ;
    latch lat_temp_reg_3__3 (.Q (temp_reg_3__3), .D (temp_reg_4__3), .CLK (
          nx2316)) ;
    latch lat_temp_reg_4__3 (.Q (temp_reg_4__3), .D (temp_reg_5__3), .CLK (
          nx2314)) ;
    latch lat_temp_reg_5__3 (.Q (temp_reg_5__3), .D (temp_reg_6__3), .CLK (
          nx2314)) ;
    latch lat_temp_reg_6__3 (.Q (temp_reg_6__3), .D (temp_reg_7__3), .CLK (
          nx2314)) ;
    latch lat_temp_reg_7__3 (.Q (temp_reg_7__3), .D (temp_reg_8__3), .CLK (
          nx2314)) ;
    latch lat_temp_reg_8__3 (.Q (temp_reg_8__3), .D (temp_reg_9__3), .CLK (
          nx2314)) ;
    latch lat_temp_reg_9__3 (.Q (temp_reg_9__3), .D (temp_reg_10__3), .CLK (
          nx2314)) ;
    latch lat_temp_reg_10__3 (.Q (temp_reg_10__3), .D (temp_reg_11__3), .CLK (
          nx2312)) ;
    latch lat_temp_reg_11__3 (.Q (temp_reg_11__3), .D (temp_reg_12__3), .CLK (
          nx2312)) ;
    latch lat_temp_reg_12__3 (.Q (temp_reg_12__3), .D (temp_reg_13__3), .CLK (
          nx2312)) ;
    latch lat_temp_reg_13__3 (.Q (temp_reg_13__3), .D (temp_reg_14__3), .CLK (
          nx2312)) ;
    latch lat_temp_reg_14__3 (.Q (temp_reg_14__3), .D (temp_reg_15__3), .CLK (
          nx2312)) ;
    latch lat_temp_reg_15__3 (.Q (temp_reg_15__3), .D (ser_data[3]), .CLK (
          nx2312)) ;
    inv01 ix493 (.Y (pal_data_0__4), .A (nx2046)) ;
    nand02 ix2047 (.Y (nx2046), .A0 (nx2334), .A1 (temp_reg_0__4)) ;
    latch lat_temp_reg_0__4 (.Q (temp_reg_0__4), .D (temp_reg_1__4), .CLK (
          nx2322)) ;
    latch lat_temp_reg_1__4 (.Q (temp_reg_1__4), .D (temp_reg_2__4), .CLK (
          nx2322)) ;
    latch lat_temp_reg_2__4 (.Q (temp_reg_2__4), .D (temp_reg_3__4), .CLK (
          nx2320)) ;
    latch lat_temp_reg_3__4 (.Q (temp_reg_3__4), .D (temp_reg_4__4), .CLK (
          nx2320)) ;
    latch lat_temp_reg_4__4 (.Q (temp_reg_4__4), .D (temp_reg_5__4), .CLK (
          nx2320)) ;
    latch lat_temp_reg_5__4 (.Q (temp_reg_5__4), .D (temp_reg_6__4), .CLK (
          nx2320)) ;
    latch lat_temp_reg_6__4 (.Q (temp_reg_6__4), .D (temp_reg_7__4), .CLK (
          nx2320)) ;
    latch lat_temp_reg_7__4 (.Q (temp_reg_7__4), .D (temp_reg_8__4), .CLK (
          nx2320)) ;
    latch lat_temp_reg_8__4 (.Q (temp_reg_8__4), .D (temp_reg_9__4), .CLK (
          nx2318)) ;
    latch lat_temp_reg_9__4 (.Q (temp_reg_9__4), .D (temp_reg_10__4), .CLK (
          nx2318)) ;
    latch lat_temp_reg_10__4 (.Q (temp_reg_10__4), .D (temp_reg_11__4), .CLK (
          nx2318)) ;
    latch lat_temp_reg_11__4 (.Q (temp_reg_11__4), .D (temp_reg_12__4), .CLK (
          nx2318)) ;
    latch lat_temp_reg_12__4 (.Q (temp_reg_12__4), .D (temp_reg_13__4), .CLK (
          nx2318)) ;
    latch lat_temp_reg_13__4 (.Q (temp_reg_13__4), .D (temp_reg_14__4), .CLK (
          nx2318)) ;
    latch lat_temp_reg_14__4 (.Q (temp_reg_14__4), .D (temp_reg_15__4), .CLK (
          nx2316)) ;
    latch lat_temp_reg_15__4 (.Q (temp_reg_15__4), .D (ser_data[4]), .CLK (
          nx2316)) ;
    inv01 ix495 (.Y (pal_data_1__0), .A (nx2065)) ;
    nand02 ix2066 (.Y (nx2065), .A0 (nx2334), .A1 (temp_reg_1__0)) ;
    inv01 ix497 (.Y (pal_data_1__1), .A (nx2068)) ;
    nand02 ix2069 (.Y (nx2068), .A0 (nx2336), .A1 (temp_reg_1__1)) ;
    inv01 ix499 (.Y (pal_data_1__2), .A (nx2071)) ;
    nand02 ix2072 (.Y (nx2071), .A0 (nx2336), .A1 (temp_reg_1__2)) ;
    inv01 ix501 (.Y (pal_data_1__3), .A (nx2074)) ;
    nand02 ix2075 (.Y (nx2074), .A0 (nx2336), .A1 (temp_reg_1__3)) ;
    inv01 ix503 (.Y (pal_data_1__4), .A (nx2077)) ;
    nand02 ix2078 (.Y (nx2077), .A0 (nx2336), .A1 (temp_reg_1__4)) ;
    inv01 ix505 (.Y (pal_data_2__0), .A (nx2080)) ;
    nand02 ix2081 (.Y (nx2080), .A0 (nx2336), .A1 (temp_reg_2__0)) ;
    inv01 ix507 (.Y (pal_data_2__1), .A (nx2083)) ;
    nand02 ix2084 (.Y (nx2083), .A0 (nx2336), .A1 (temp_reg_2__1)) ;
    inv01 ix509 (.Y (pal_data_2__2), .A (nx2086)) ;
    nand02 ix2087 (.Y (nx2086), .A0 (nx2338), .A1 (temp_reg_2__2)) ;
    inv01 ix511 (.Y (pal_data_2__3), .A (nx2089)) ;
    nand02 ix2090 (.Y (nx2089), .A0 (nx2338), .A1 (temp_reg_2__3)) ;
    inv01 ix513 (.Y (pal_data_2__4), .A (nx2092)) ;
    nand02 ix2093 (.Y (nx2092), .A0 (nx2338), .A1 (temp_reg_2__4)) ;
    inv01 ix515 (.Y (pal_data_3__0), .A (nx2095)) ;
    nand02 ix2096 (.Y (nx2095), .A0 (nx2338), .A1 (temp_reg_3__0)) ;
    inv01 ix517 (.Y (pal_data_3__1), .A (nx2098)) ;
    nand02 ix2099 (.Y (nx2098), .A0 (nx2338), .A1 (temp_reg_3__1)) ;
    inv01 ix519 (.Y (pal_data_3__2), .A (nx2101)) ;
    nand02 ix2102 (.Y (nx2101), .A0 (nx2338), .A1 (temp_reg_3__2)) ;
    inv01 ix521 (.Y (pal_data_3__3), .A (nx2104)) ;
    nand02 ix2105 (.Y (nx2104), .A0 (nx2340), .A1 (temp_reg_3__3)) ;
    inv01 ix523 (.Y (pal_data_3__4), .A (nx2107)) ;
    nand02 ix2108 (.Y (nx2107), .A0 (nx2340), .A1 (temp_reg_3__4)) ;
    inv01 ix525 (.Y (pal_data_4__0), .A (nx2110)) ;
    nand02 ix2111 (.Y (nx2110), .A0 (nx2340), .A1 (temp_reg_4__0)) ;
    inv01 ix527 (.Y (pal_data_4__1), .A (nx2113)) ;
    nand02 ix2114 (.Y (nx2113), .A0 (nx2340), .A1 (temp_reg_4__1)) ;
    inv01 ix529 (.Y (pal_data_4__2), .A (nx2116)) ;
    nand02 ix2117 (.Y (nx2116), .A0 (nx2340), .A1 (temp_reg_4__2)) ;
    inv01 ix531 (.Y (pal_data_4__3), .A (nx2119)) ;
    nand02 ix2120 (.Y (nx2119), .A0 (nx2340), .A1 (temp_reg_4__3)) ;
    inv01 ix533 (.Y (pal_data_4__4), .A (nx2122)) ;
    nand02 ix2123 (.Y (nx2122), .A0 (nx2342), .A1 (temp_reg_4__4)) ;
    inv01 ix535 (.Y (pal_data_5__0), .A (nx2125)) ;
    nand02 ix2126 (.Y (nx2125), .A0 (nx2342), .A1 (temp_reg_5__0)) ;
    inv01 ix537 (.Y (pal_data_5__1), .A (nx2128)) ;
    nand02 ix2129 (.Y (nx2128), .A0 (nx2342), .A1 (temp_reg_5__1)) ;
    inv01 ix539 (.Y (pal_data_5__2), .A (nx2131)) ;
    nand02 ix2132 (.Y (nx2131), .A0 (nx2342), .A1 (temp_reg_5__2)) ;
    inv01 ix541 (.Y (pal_data_5__3), .A (nx2134)) ;
    nand02 ix2135 (.Y (nx2134), .A0 (nx2342), .A1 (temp_reg_5__3)) ;
    inv01 ix543 (.Y (pal_data_5__4), .A (nx2137)) ;
    nand02 ix2138 (.Y (nx2137), .A0 (nx2342), .A1 (temp_reg_5__4)) ;
    inv01 ix545 (.Y (pal_data_6__0), .A (nx2140)) ;
    nand02 ix2141 (.Y (nx2140), .A0 (nx2344), .A1 (temp_reg_6__0)) ;
    inv01 ix547 (.Y (pal_data_6__1), .A (nx2143)) ;
    nand02 ix2144 (.Y (nx2143), .A0 (nx2344), .A1 (temp_reg_6__1)) ;
    inv01 ix549 (.Y (pal_data_6__2), .A (nx2146)) ;
    nand02 ix2147 (.Y (nx2146), .A0 (nx2344), .A1 (temp_reg_6__2)) ;
    inv01 ix551 (.Y (pal_data_6__3), .A (nx2149)) ;
    nand02 ix2150 (.Y (nx2149), .A0 (nx2344), .A1 (temp_reg_6__3)) ;
    inv01 ix553 (.Y (pal_data_6__4), .A (nx2152)) ;
    nand02 ix2153 (.Y (nx2152), .A0 (nx2344), .A1 (temp_reg_6__4)) ;
    inv01 ix555 (.Y (pal_data_7__0), .A (nx2155)) ;
    nand02 ix2156 (.Y (nx2155), .A0 (nx2344), .A1 (temp_reg_7__0)) ;
    inv01 ix557 (.Y (pal_data_7__1), .A (nx2158)) ;
    nand02 ix2159 (.Y (nx2158), .A0 (nx2346), .A1 (temp_reg_7__1)) ;
    inv01 ix559 (.Y (pal_data_7__2), .A (nx2161)) ;
    nand02 ix2162 (.Y (nx2161), .A0 (nx2346), .A1 (temp_reg_7__2)) ;
    inv01 ix561 (.Y (pal_data_7__3), .A (nx2164)) ;
    nand02 ix2165 (.Y (nx2164), .A0 (nx2346), .A1 (temp_reg_7__3)) ;
    inv01 ix563 (.Y (pal_data_7__4), .A (nx2167)) ;
    nand02 ix2168 (.Y (nx2167), .A0 (nx2346), .A1 (temp_reg_7__4)) ;
    inv01 ix565 (.Y (pal_data_8__0), .A (nx2170)) ;
    nand02 ix2171 (.Y (nx2170), .A0 (nx2346), .A1 (temp_reg_8__0)) ;
    inv01 ix567 (.Y (pal_data_8__1), .A (nx2173)) ;
    nand02 ix2174 (.Y (nx2173), .A0 (nx2346), .A1 (temp_reg_8__1)) ;
    inv01 ix569 (.Y (pal_data_8__2), .A (nx2176)) ;
    nand02 ix2177 (.Y (nx2176), .A0 (nx2348), .A1 (temp_reg_8__2)) ;
    inv01 ix571 (.Y (pal_data_8__3), .A (nx2179)) ;
    nand02 ix2180 (.Y (nx2179), .A0 (nx2348), .A1 (temp_reg_8__3)) ;
    inv01 ix573 (.Y (pal_data_8__4), .A (nx2182)) ;
    nand02 ix2183 (.Y (nx2182), .A0 (nx2348), .A1 (temp_reg_8__4)) ;
    inv01 ix575 (.Y (pal_data_9__0), .A (nx2185)) ;
    nand02 ix2186 (.Y (nx2185), .A0 (nx2348), .A1 (temp_reg_9__0)) ;
    inv01 ix577 (.Y (pal_data_9__1), .A (nx2188)) ;
    nand02 ix2189 (.Y (nx2188), .A0 (nx2348), .A1 (temp_reg_9__1)) ;
    inv01 ix579 (.Y (pal_data_9__2), .A (nx2191)) ;
    nand02 ix2192 (.Y (nx2191), .A0 (nx2348), .A1 (temp_reg_9__2)) ;
    inv01 ix581 (.Y (pal_data_9__3), .A (nx2194)) ;
    nand02 ix2195 (.Y (nx2194), .A0 (nx2350), .A1 (temp_reg_9__3)) ;
    inv01 ix583 (.Y (pal_data_9__4), .A (nx2197)) ;
    nand02 ix2198 (.Y (nx2197), .A0 (nx2350), .A1 (temp_reg_9__4)) ;
    inv01 ix585 (.Y (pal_data_10__0), .A (nx2200)) ;
    nand02 ix2201 (.Y (nx2200), .A0 (nx2350), .A1 (temp_reg_10__0)) ;
    inv01 ix587 (.Y (pal_data_10__1), .A (nx2203)) ;
    nand02 ix2204 (.Y (nx2203), .A0 (nx2350), .A1 (temp_reg_10__1)) ;
    inv01 ix589 (.Y (pal_data_10__2), .A (nx2206)) ;
    nand02 ix2207 (.Y (nx2206), .A0 (nx2350), .A1 (temp_reg_10__2)) ;
    inv01 ix591 (.Y (pal_data_10__3), .A (nx2209)) ;
    nand02 ix2210 (.Y (nx2209), .A0 (nx2350), .A1 (temp_reg_10__3)) ;
    inv01 ix593 (.Y (pal_data_10__4), .A (nx2212)) ;
    nand02 ix2213 (.Y (nx2212), .A0 (nx2352), .A1 (temp_reg_10__4)) ;
    inv01 ix595 (.Y (pal_data_11__0), .A (nx2215)) ;
    nand02 ix2216 (.Y (nx2215), .A0 (nx2352), .A1 (temp_reg_11__0)) ;
    inv01 ix597 (.Y (pal_data_11__1), .A (nx2218)) ;
    nand02 ix2219 (.Y (nx2218), .A0 (nx2352), .A1 (temp_reg_11__1)) ;
    inv01 ix599 (.Y (pal_data_11__2), .A (nx2221)) ;
    nand02 ix2222 (.Y (nx2221), .A0 (nx2352), .A1 (temp_reg_11__2)) ;
    inv01 ix601 (.Y (pal_data_11__3), .A (nx2224)) ;
    nand02 ix2225 (.Y (nx2224), .A0 (nx2352), .A1 (temp_reg_11__3)) ;
    inv01 ix603 (.Y (pal_data_11__4), .A (nx2227)) ;
    nand02 ix2228 (.Y (nx2227), .A0 (nx2352), .A1 (temp_reg_11__4)) ;
    inv01 ix605 (.Y (pal_data_12__0), .A (nx2230)) ;
    nand02 ix2231 (.Y (nx2230), .A0 (nx2354), .A1 (temp_reg_12__0)) ;
    inv01 ix607 (.Y (pal_data_12__1), .A (nx2233)) ;
    nand02 ix2234 (.Y (nx2233), .A0 (nx2354), .A1 (temp_reg_12__1)) ;
    inv01 ix609 (.Y (pal_data_12__2), .A (nx2236)) ;
    nand02 ix2237 (.Y (nx2236), .A0 (nx2354), .A1 (temp_reg_12__2)) ;
    inv01 ix611 (.Y (pal_data_12__3), .A (nx2239)) ;
    nand02 ix2240 (.Y (nx2239), .A0 (nx2354), .A1 (temp_reg_12__3)) ;
    inv01 ix613 (.Y (pal_data_12__4), .A (nx2242)) ;
    nand02 ix2243 (.Y (nx2242), .A0 (nx2354), .A1 (temp_reg_12__4)) ;
    inv01 ix615 (.Y (pal_data_13__0), .A (nx2245)) ;
    nand02 ix2246 (.Y (nx2245), .A0 (nx2354), .A1 (temp_reg_13__0)) ;
    inv01 ix617 (.Y (pal_data_13__1), .A (nx2248)) ;
    nand02 ix2249 (.Y (nx2248), .A0 (nx2356), .A1 (temp_reg_13__1)) ;
    inv01 ix619 (.Y (pal_data_13__2), .A (nx2251)) ;
    nand02 ix2252 (.Y (nx2251), .A0 (nx2356), .A1 (temp_reg_13__2)) ;
    inv01 ix621 (.Y (pal_data_13__3), .A (nx2254)) ;
    nand02 ix2255 (.Y (nx2254), .A0 (nx2356), .A1 (temp_reg_13__3)) ;
    inv01 ix623 (.Y (pal_data_13__4), .A (nx2257)) ;
    nand02 ix2258 (.Y (nx2257), .A0 (nx2356), .A1 (temp_reg_13__4)) ;
    inv01 ix625 (.Y (pal_data_14__0), .A (nx2260)) ;
    nand02 ix2261 (.Y (nx2260), .A0 (nx2356), .A1 (temp_reg_14__0)) ;
    inv01 ix627 (.Y (pal_data_14__1), .A (nx2263)) ;
    nand02 ix2264 (.Y (nx2263), .A0 (nx2356), .A1 (temp_reg_14__1)) ;
    inv01 ix629 (.Y (pal_data_14__2), .A (nx2266)) ;
    nand02 ix2267 (.Y (nx2266), .A0 (nx2358), .A1 (temp_reg_14__2)) ;
    inv01 ix631 (.Y (pal_data_14__3), .A (nx2269)) ;
    nand02 ix2270 (.Y (nx2269), .A0 (nx2358), .A1 (temp_reg_14__3)) ;
    inv01 ix633 (.Y (pal_data_14__4), .A (nx2272)) ;
    nand02 ix2273 (.Y (nx2272), .A0 (nx2358), .A1 (temp_reg_14__4)) ;
    inv01 ix635 (.Y (pal_data_15__0), .A (nx2275)) ;
    nand02 ix2276 (.Y (nx2275), .A0 (nx2358), .A1 (temp_reg_15__0)) ;
    inv01 ix637 (.Y (pal_data_15__1), .A (nx2278)) ;
    nand02 ix2279 (.Y (nx2278), .A0 (nx2358), .A1 (temp_reg_15__1)) ;
    inv01 ix639 (.Y (pal_data_15__2), .A (nx2281)) ;
    nand02 ix2282 (.Y (nx2281), .A0 (nx2358), .A1 (temp_reg_15__2)) ;
    inv01 ix641 (.Y (pal_data_15__3), .A (nx2284)) ;
    nand02 ix2285 (.Y (nx2284), .A0 (nx2360), .A1 (temp_reg_15__3)) ;
    inv01 ix643 (.Y (pal_data_15__4), .A (nx2287)) ;
    nand02 ix2288 (.Y (nx2287), .A0 (nx2360), .A1 (temp_reg_15__4)) ;
    inv01 ix2293 (.Y (nx2294), .A (nx2)) ;
    inv01 ix2295 (.Y (nx2296), .A (nx2324)) ;
    inv01 ix2297 (.Y (nx2298), .A (nx2324)) ;
    inv01 ix2299 (.Y (nx2300), .A (nx2324)) ;
    inv01 ix2301 (.Y (nx2302), .A (nx2324)) ;
    inv01 ix2303 (.Y (nx2304), .A (nx2324)) ;
    inv01 ix2305 (.Y (nx2306), .A (nx2324)) ;
    inv01 ix2307 (.Y (nx2308), .A (nx2326)) ;
    inv01 ix2309 (.Y (nx2310), .A (nx2326)) ;
    inv01 ix2311 (.Y (nx2312), .A (nx2326)) ;
    inv01 ix2313 (.Y (nx2314), .A (nx2326)) ;
    inv01 ix2315 (.Y (nx2316), .A (nx2326)) ;
    inv01 ix2317 (.Y (nx2318), .A (nx2326)) ;
    inv01 ix2319 (.Y (nx2320), .A (nx2294)) ;
    inv01 ix2321 (.Y (nx2322), .A (nx2294)) ;
    inv01 ix2323 (.Y (nx2324), .A (nx2)) ;
    inv01 ix2325 (.Y (nx2326), .A (nx2)) ;
    nor02ii ix3 (.Y (nx2), .A0 (clr), .A1 (clk)) ;
    inv01 ix2331 (.Y (nx2332), .A (en)) ;
    inv01 ix2333 (.Y (nx2334), .A (nx2362)) ;
    inv01 ix2335 (.Y (nx2336), .A (nx2362)) ;
    inv01 ix2337 (.Y (nx2338), .A (nx2362)) ;
    inv01 ix2339 (.Y (nx2340), .A (nx2362)) ;
    inv01 ix2341 (.Y (nx2342), .A (nx2362)) ;
    inv01 ix2343 (.Y (nx2344), .A (nx2362)) ;
    inv01 ix2345 (.Y (nx2346), .A (nx2364)) ;
    inv01 ix2347 (.Y (nx2348), .A (nx2364)) ;
    inv01 ix2349 (.Y (nx2350), .A (nx2364)) ;
    inv01 ix2351 (.Y (nx2352), .A (nx2364)) ;
    inv01 ix2353 (.Y (nx2354), .A (nx2364)) ;
    inv01 ix2355 (.Y (nx2356), .A (nx2364)) ;
    inv01 ix2357 (.Y (nx2358), .A (nx2332)) ;
    inv01 ix2359 (.Y (nx2360), .A (nx2332)) ;
    inv01 ix2361 (.Y (nx2362), .A (en)) ;
    inv01 ix2363 (.Y (nx2364), .A (en)) ;
endmodule

