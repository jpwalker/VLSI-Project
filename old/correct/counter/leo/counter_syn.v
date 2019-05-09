//
// Verilog description for cell counter, 
// Wed May  8 16:11:19 2019
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module counter ( count, rst, msg_rdy ) ;

    input count ;
    input rst ;
    output msg_rdy ;

    wire curr_state_1, nx66, nx14, nx76, nx80;
    wire [0:0] \$dummy ;




    dffr reg_curr_state_0 (.Q (\$dummy [0]), .QB (nx76), .D (nx66), .CLK (count)
         , .R (rst)) ;
    dffr reg_curr_state_1 (.Q (curr_state_1), .QB (nx80), .D (nx14), .CLK (count
         ), .R (rst)) ;
    nor02 ix21 (.Y (msg_rdy), .A0 (nx80), .A1 (nx76)) ;
    mux21 ix15 (.Y (nx14), .A0 (msg_rdy), .A1 (nx76), .S0 (nx80)) ;
    or02 ix7 (.Y (nx66), .A0 (nx76), .A1 (curr_state_1)) ;
endmodule

