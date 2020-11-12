module counterup (input t,clk, output q1,q2,q3,q4);

wire t3, t4;

and(t3,q1,q2);
and(t4,t3,q3);

tff tff1(.t(t), .clk(clk), .q(q1));

tff tff2(.t(q1), .clk(clk), .q(q2));

tff tff3(.t(t3), .clk(clk), .q(q3));

tff tff4(.t(t4), .clk(clk), .q(q4));

endmodule