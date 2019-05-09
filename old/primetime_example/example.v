module example(D, clk, Q1, Q2);
input D, clk;
output Q1, Q2;
wire out_not;
reg Q1, Q2;

always @(posedge clk)
begin
Q1 <= D;
end

assign out_not=~Q1;

always @(posedge clk)
begin
Q2 <= out_not;
end


endmodule