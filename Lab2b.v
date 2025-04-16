//module Lab2b (A,B,C,D,S,T,Y);
module Lab2b (A,B,C,D,S,T,Y, LEDa, LEDb, LEDc, LEDd, LEDs, LEDt);
input A,B,C,D,S,T;
output Y;
output LEDa, LEDb, LEDc, LEDd, LEDs, LEDt;

wire SN,TN,DST,CSTN,BTSN,ASNTN;

 NotGate U1 (.x1(S),.f(SN));
 NotGate U2 (.x1(T),.f(TN));
 AndGate U3 (.x1(A),.x2(SN),.x3(TN),.f(ASNTN));
 AndGate U4 (.x1(B),.x2(T),.x3(SN),.f(BTSN));
 AndGate U5 (.x1(C),.x2(S),.x3(TN),.f(CSTN));
 AndGate U6 (.x1(D),.x2(S),.x3(T),.f(DST));
 OrGate U7(.x1(ASNTN),.x2(BTSN),.x3(CSTN),.x4(DST),.f(Y));

assign LEDa= A;
assign LEDb= B;
assign LEDc= C;
assign LEDd= D;
assign LEDs= S;
assign LEDt= T;

endmodule


module NotGate(x1,f);
input x1;
output f;
assign f = ~x1;

endmodule

module OrGate(x1,x2, x3, x4, f);
input x1, x2,x3,x4;
output f;
 assign f = (x1 ==1 || x2 == 1 || x3 ==1 || x4 == 1)? 1'b1:1'b0;
 
 
 endmodule
 
 module AndGate(x1,x2,x3,f);
  input x1, x2,x3;
output f;
 assign f = x1 & x2 & x3 ;
 
 endmodule
 