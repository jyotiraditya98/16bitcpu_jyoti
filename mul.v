module multiplier(P, A, B);
  parameter N=16;
  input [N-1:0] A, B;
  output reg [N+15:0] P;
 
  wire [N-1:0] m0;
  wire [N:0] m1;
  wire [N+1:0] m2;
  wire [N+2:0] m3;
  wire [N+3:0] m4;
  wire [N+4:0] m5;
  wire [N+5:0] m6;
  wire [N+6:0] m7;
  wire [N+7:0] m8;
  wire [N+8:0] m9;
  wire [N+9:0] m10;
  wire [N+10:0] m11;
  wire [N+11:0] m12;
  wire [N+12:0] m13;
  wire [N+13:0] m14;
  wire [N+14:0] m15;
 
  wire [31:0] s1, s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;
  
  assign m0 = {16{A[0]}} & B[15:0];
  assign m1 = {16{A[1]}} & B[15:0];
  assign m2 = {16{A[2]}} & B[15:0];
  assign m3 = {16{A[3]}} & B[15:0];
  assign m4 = {16{A[4]}} & B[15:0];
  assign m5 = {16{A[5]}} & B[15:0];
  assign m6 = {16{A[6]}} & B[15:0];
  assign m7 = {16{A[7]}} & B[15:0];
  assign m8 = {16{A[8]}} & B[15:0];
  assign m9 = {16{A[9]}} & B[15:0];
  assign m10 = {16{A[10]}} & B[15:0];
  assign m11 = {16{A[11]}} & B[15:0];
  assign m12 = {16{A[12]}} & B[15:0];
  assign m13 = {16{A[13]}} & B[15:0];
  assign m14 = {16{A[14]}} & B[15:0];
  assign m15 = {16{A[15]}} & B[15:0];
  
  assign s1 = m0 + (m1<<1);
  assign s2 = s1 + (m2<<2);
  assign s3 = s2 + (m3<<3);
  assign s4 = s3 + (m4<<4);
  assign s5 = s4 + (m5<<5);
  assign s6 = s5 + (m6<<6);
  assign s7 = s6 + (m7<<7);
  assign s8 = s7 + (m8<<8);
  assign s9 = s8 + (m9<<9);
  assign s10 = s9 + (m10<<10);
  assign s11 = s10 + (m11<<11);
  assign s12 = s11 + (m12<<12);
  assign s13 = s12 + (m13<<13);
  assign s14 = s13 + (m14<<14);
  assign s15 = s14 + (m15<<15);

  
  assign P = s15;
  
endmodule
