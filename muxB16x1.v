module mux_16x1(
rs2_x, rs2_0, rs2_1, rs2_2, rs2_3, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
input rs2_0, rs2_1, rs2_2, rs2_3, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
output reg rs2_y;

 

always @ (*) begin
  case(rs1_x)
    4'b0000 : rs2_y <= x0;
    4'b0001 : rs2_y <= x1;
    4'b0010 : rs2_y <= x2;
    4'b0011 : rs2_y <= x3;
    4'b0100 : rs2_y <= x4;
    4'b0101 : rs2_y <= x5;
    4'b0110 : rs2_y <= x6;
    4'b0111 : rs2_y <= x7;
    4'b1000 : rs2_y <= x8;
    4'b1001 : rs2_y <= x9;
    4'b1010 : rs2_y <= x10;
    4'b1011 : rs2_y <= x11;
    4'b1100 : rs2_y <= x12;
    4'b1101 : rs2_y <= x13;
    4'b1110 : rs2_y <= x14;
    4'b1111 : rs2_y <= x15;
endcase
end
endmodule
