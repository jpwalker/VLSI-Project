/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP2
// Date      : Tue Apr 16 18:27:40 2019
/////////////////////////////////////////////////////////////


module example ( D, clk, Q1, Q2 );
  input D, clk;
  output Q1, Q2;
  wire   n1;

  FD1 Q1_reg ( .D(D), .CP(clk), .Q(Q1), .QN(n1) );
  FD1 Q2_reg ( .D(n1), .CP(clk), .Q(Q2) );
endmodule

