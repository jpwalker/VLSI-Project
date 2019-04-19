//
// Verilog description for cell multiplier, 
// Fri Apr 19 19:40:42 2019
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module multiplier ( A_15__1, A_15__0, A_14__1, A_14__0, A_13__1, A_13__0, 
                    A_12__1, A_12__0, A_11__1, A_11__0, A_10__1, A_10__0, A_9__1, 
                    A_9__0, A_8__1, A_8__0, A_7__1, A_7__0, A_6__1, A_6__0, 
                    A_5__1, A_5__0, A_4__1, A_4__0, A_3__1, A_3__0, A_2__1, 
                    A_2__0, A_1__1, A_1__0, A_0__1, A_0__0, B_15__1, B_15__0, 
                    B_14__1, B_14__0, B_13__1, B_13__0, B_12__1, B_12__0, 
                    B_11__1, B_11__0, B_10__1, B_10__0, B_9__1, B_9__0, B_8__1, 
                    B_8__0, B_7__1, B_7__0, B_6__1, B_6__0, B_5__1, B_5__0, 
                    B_4__1, B_4__0, B_3__1, B_3__0, B_2__1, B_2__0, B_1__1, 
                    B_1__0, B_0__1, B_0__0, C_15__1, C_15__0, C_14__1, C_14__0, 
                    C_13__1, C_13__0, C_12__1, C_12__0, C_11__1, C_11__0, 
                    C_10__1, C_10__0, C_9__1, C_9__0, C_8__1, C_8__0, C_7__1, 
                    C_7__0, C_6__1, C_6__0, C_5__1, C_5__0, C_4__1, C_4__0, 
                    C_3__1, C_3__0, C_2__1, C_2__0, C_1__1, C_1__0, C_0__1, 
                    C_0__0 ) ;

    input A_15__1 ;
    input A_15__0 ;
    input A_14__1 ;
    input A_14__0 ;
    input A_13__1 ;
    input A_13__0 ;
    input A_12__1 ;
    input A_12__0 ;
    input A_11__1 ;
    input A_11__0 ;
    input A_10__1 ;
    input A_10__0 ;
    input A_9__1 ;
    input A_9__0 ;
    input A_8__1 ;
    input A_8__0 ;
    input A_7__1 ;
    input A_7__0 ;
    input A_6__1 ;
    input A_6__0 ;
    input A_5__1 ;
    input A_5__0 ;
    input A_4__1 ;
    input A_4__0 ;
    input A_3__1 ;
    input A_3__0 ;
    input A_2__1 ;
    input A_2__0 ;
    input A_1__1 ;
    input A_1__0 ;
    input A_0__1 ;
    input A_0__0 ;
    input B_15__1 ;
    input B_15__0 ;
    input B_14__1 ;
    input B_14__0 ;
    input B_13__1 ;
    input B_13__0 ;
    input B_12__1 ;
    input B_12__0 ;
    input B_11__1 ;
    input B_11__0 ;
    input B_10__1 ;
    input B_10__0 ;
    input B_9__1 ;
    input B_9__0 ;
    input B_8__1 ;
    input B_8__0 ;
    input B_7__1 ;
    input B_7__0 ;
    input B_6__1 ;
    input B_6__0 ;
    input B_5__1 ;
    input B_5__0 ;
    input B_4__1 ;
    input B_4__0 ;
    input B_3__1 ;
    input B_3__0 ;
    input B_2__1 ;
    input B_2__0 ;
    input B_1__1 ;
    input B_1__0 ;
    input B_0__1 ;
    input B_0__0 ;
    output C_15__1 ;
    output C_15__0 ;
    output C_14__1 ;
    output C_14__0 ;
    output C_13__1 ;
    output C_13__0 ;
    output C_12__1 ;
    output C_12__0 ;
    output C_11__1 ;
    output C_11__0 ;
    output C_10__1 ;
    output C_10__0 ;
    output C_9__1 ;
    output C_9__0 ;
    output C_8__1 ;
    output C_8__0 ;
    output C_7__1 ;
    output C_7__0 ;
    output C_6__1 ;
    output C_6__0 ;
    output C_5__1 ;
    output C_5__0 ;
    output C_4__1 ;
    output C_4__0 ;
    output C_3__1 ;
    output C_3__0 ;
    output C_2__1 ;
    output C_2__0 ;
    output C_1__1 ;
    output C_1__0 ;
    output C_0__1 ;
    output C_0__0 ;

    wire nx213, nx217, nx221, nx225, nx229, nx233, nx237, nx241, nx245, nx249, 
         nx253, nx257, nx261, nx265, nx269, nx273;



    and02 ix1 (.Y (C_0__0), .A0 (B_0__0), .A1 (A_0__0)) ;
    nor02ii ix5 (.Y (C_0__1), .A0 (nx213), .A1 (C_0__0)) ;
    xnor2 ix214 (.Y (nx213), .A0 (A_0__1), .A1 (B_0__1)) ;
    and02 ix7 (.Y (C_1__0), .A0 (B_1__0), .A1 (A_1__0)) ;
    nor02ii ix11 (.Y (C_1__1), .A0 (nx217), .A1 (C_1__0)) ;
    xnor2 ix218 (.Y (nx217), .A0 (A_1__1), .A1 (B_1__1)) ;
    and02 ix13 (.Y (C_2__0), .A0 (B_2__0), .A1 (A_2__0)) ;
    nor02ii ix17 (.Y (C_2__1), .A0 (nx221), .A1 (C_2__0)) ;
    xnor2 ix222 (.Y (nx221), .A0 (A_2__1), .A1 (B_2__1)) ;
    and02 ix19 (.Y (C_3__0), .A0 (B_3__0), .A1 (A_3__0)) ;
    nor02ii ix23 (.Y (C_3__1), .A0 (nx225), .A1 (C_3__0)) ;
    xnor2 ix226 (.Y (nx225), .A0 (A_3__1), .A1 (B_3__1)) ;
    and02 ix25 (.Y (C_4__0), .A0 (B_4__0), .A1 (A_4__0)) ;
    nor02ii ix29 (.Y (C_4__1), .A0 (nx229), .A1 (C_4__0)) ;
    xnor2 ix230 (.Y (nx229), .A0 (A_4__1), .A1 (B_4__1)) ;
    and02 ix31 (.Y (C_5__0), .A0 (B_5__0), .A1 (A_5__0)) ;
    nor02ii ix35 (.Y (C_5__1), .A0 (nx233), .A1 (C_5__0)) ;
    xnor2 ix234 (.Y (nx233), .A0 (A_5__1), .A1 (B_5__1)) ;
    and02 ix37 (.Y (C_6__0), .A0 (B_6__0), .A1 (A_6__0)) ;
    nor02ii ix41 (.Y (C_6__1), .A0 (nx237), .A1 (C_6__0)) ;
    xnor2 ix238 (.Y (nx237), .A0 (A_6__1), .A1 (B_6__1)) ;
    and02 ix43 (.Y (C_7__0), .A0 (B_7__0), .A1 (A_7__0)) ;
    nor02ii ix47 (.Y (C_7__1), .A0 (nx241), .A1 (C_7__0)) ;
    xnor2 ix242 (.Y (nx241), .A0 (A_7__1), .A1 (B_7__1)) ;
    and02 ix49 (.Y (C_8__0), .A0 (B_8__0), .A1 (A_8__0)) ;
    nor02ii ix53 (.Y (C_8__1), .A0 (nx245), .A1 (C_8__0)) ;
    xnor2 ix246 (.Y (nx245), .A0 (A_8__1), .A1 (B_8__1)) ;
    and02 ix55 (.Y (C_9__0), .A0 (B_9__0), .A1 (A_9__0)) ;
    nor02ii ix59 (.Y (C_9__1), .A0 (nx249), .A1 (C_9__0)) ;
    xnor2 ix250 (.Y (nx249), .A0 (A_9__1), .A1 (B_9__1)) ;
    and02 ix61 (.Y (C_10__0), .A0 (B_10__0), .A1 (A_10__0)) ;
    nor02ii ix65 (.Y (C_10__1), .A0 (nx253), .A1 (C_10__0)) ;
    xnor2 ix254 (.Y (nx253), .A0 (A_10__1), .A1 (B_10__1)) ;
    and02 ix67 (.Y (C_11__0), .A0 (B_11__0), .A1 (A_11__0)) ;
    nor02ii ix71 (.Y (C_11__1), .A0 (nx257), .A1 (C_11__0)) ;
    xnor2 ix258 (.Y (nx257), .A0 (A_11__1), .A1 (B_11__1)) ;
    and02 ix73 (.Y (C_12__0), .A0 (B_12__0), .A1 (A_12__0)) ;
    nor02ii ix77 (.Y (C_12__1), .A0 (nx261), .A1 (C_12__0)) ;
    xnor2 ix262 (.Y (nx261), .A0 (A_12__1), .A1 (B_12__1)) ;
    and02 ix79 (.Y (C_13__0), .A0 (B_13__0), .A1 (A_13__0)) ;
    nor02ii ix83 (.Y (C_13__1), .A0 (nx265), .A1 (C_13__0)) ;
    xnor2 ix266 (.Y (nx265), .A0 (A_13__1), .A1 (B_13__1)) ;
    and02 ix85 (.Y (C_14__0), .A0 (B_14__0), .A1 (A_14__0)) ;
    nor02ii ix89 (.Y (C_14__1), .A0 (nx269), .A1 (C_14__0)) ;
    xnor2 ix270 (.Y (nx269), .A0 (A_14__1), .A1 (B_14__1)) ;
    and02 ix91 (.Y (C_15__0), .A0 (B_15__0), .A1 (A_15__0)) ;
    nor02ii ix95 (.Y (C_15__1), .A0 (nx273), .A1 (C_15__0)) ;
    xnor2 ix274 (.Y (nx273), .A0 (A_15__1), .A1 (B_15__1)) ;
endmodule

