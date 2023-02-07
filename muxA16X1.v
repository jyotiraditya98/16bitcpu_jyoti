module mux_16x1(
rs1_x, rs1_0, rs1_1, rs1_2, rs1_3, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
input rs1_0, rs1_1, rs1_2, rs1_3, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
output reg rs1_x;

 

always @ (*) begin
  case(rs1_x)
    4'b0000 : rs1_x <= x0;
    4'b0001 : rs1_x <= x1;
    4'b0010 : rs1_x <= x2;
    4'b0011 : rs1_x <= x3;
    4'b0100 : rs1_x <= x4;
    4'b0101 : rs1_x <= x5;
    4'b0110 : rs1_x <= x6;
    4'b0111 : rs1_x <= x7;
    4'b1000 : rs1_x <= x8;
    4'b1001 : rs1_x <= x9;
    4'b1010 : rs1_x <= x10;
    4'b1011 : rs1_x <= x11;
    4'b1100 : rs1_x <= x12;
    4'b1101 : rs1_x <= x13;
    4'b1110 : rs1_x <= x14;
    4'b1111 : rs1_x <= x15;
endcase
end
endmodule
