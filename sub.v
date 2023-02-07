module a16bitsub(inp1,inp2,bin,sub,bo);
  parameter N=16;
  input [N-1:0]inp1,inp2;
  input bin;
  output reg [N-1:0]sub;
  output reg bo;
  wire b11,b12,b13;
  a4bitsub af0(.inp1(inp1[3:0]),.inp2(inp2[3:0]),.bin(bin),.sub(sub[3:0]),.bo(b11));
  a4bitsub af1(.inp1(inp1[7:4]),.inp2(inp2[7:4]),.bin(b11),.sub(sub[7:4]),.bo(b12));
  a4bitsub af2(.inp1(inp1[11:8]),.inp2(inp2[11:8]),.bin(b12),.sub(sub[11:8]),.bo(b13));
  a4bitsub af3(.inp1(inp1[15:12]),.inp2(inp2[15:12]),.bin(b13),.sub(sub[15:12]),.bo(bo));
endmodule

module a4bitsub(inp1,inp2,bin,sub,bo);
  input [3:0]inp1,inp2;
  input bin;
  output reg [3:0]sub;
  output reg bo;
  wire b1,b2,b3;
  fullsubtractor f0(.x(inp1[0]),.y(inp2[0]),.bin(bin),.d(sub[0]),.bo(b1));
  fullsubtractor f1(.x(inp1[1]),.y(inp2[1]),.bin(b1),.d(sub[1]),.bo(b2));
  fullsubtractor f2(.x(inp1[2]),.y(inp2[2]),.bin(b2),.d(sub[2]),.bo(b3));
  fullsubtractor f3(.x(inp1[3]),.y(inp2[3]),.bin(b3),.d(sub[3]),.bo(bo));
endmodule



module fullsubtractor (d,bor,x,y,bin);
  
  input x,y,bin;
  output reg d;
  output bor;
  
  wire s,p,q,r,t;
  
  xor xor1(s,x,y);
  xor xor2(d,s,bin);
  not not1(p,y);
  not not2(r,s);
  and and1(q,b,p);
  and and2(t,r,bin);
  or or1(bor, t,q);
  
endmodule
