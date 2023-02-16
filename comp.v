module comp(i1,i2,less,greater,equal);
  input i1,i2;
  output reg less,greater,equal;
  wire t1,t2;
  
  not n1(t1,i2);
  and a1(greater,t1,i1);
  xnor x1(equal,i1,i2);
  not n2(t2,i1);
  and a2(less,t2,i2);
endmodule

module comp_4_bit(i1,i2,less,greater,equal);
  input [3:0]i1,i2;
  output reg less,greater,equal;
  wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12;
  wire y1,y2,y3,y4,y5,y6;
  
  comp c1(.i1(i1[0]),.i2(i2[0]),.less(t1),.greater(t2),.equal(t3));
  comp c2(.i1(i1[1]),.i2(i2[1]),.less(t4),.greater(t5),.equal(t6));
  comp c3(.i1(i1[2]),.i2(i2[2]),.less(t7),.greater(t8),.equal(t9));
  comp c4(.i1(i1[3]),.i2(inp2[3]),.less(t10),.greater(t11),.equal(t12));
  
   
  and b1(y1,t2,t6,t9,t12);
  
  and b2(y2,t1,t6,t9,t12);
  
  and b3(y3,t5,t9,t12);
  
  and b4(y4,t4,t9,t12);
  
  and b5(y5,t8,t12);
  
  and b6(y6,t7,t12);
  
 
  and b7(equal,t3,t6,t9,t12);
  
  or b8(greater,y1,y3,y5,t11);
 
  or b9(less,y2,y4,y6,t10);
  
endmodule
 
module comp_16_bit(i1,i2,comp);
  input [15:0]i1,i2;
  output reg comp;
  wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12;
  wire y1,y2,y3,y4,y5,y6,less,greater,equal;
  wire [1:0]op1;
  comp_4_bit c1(.i1(i1[3:0]),.i2(i2[3:0]),.less(t1),.greater(t2),.equal(t3));
  comp_4_bit c2(.i1(i1[7:4]),.i2(i2[7:4]),.less(t4),.greater(t5),.equal(t6));
  comp_4_bit c3(.i1(i1[11:8]),.i2(i2[11:8]),.less(t7),.greater(t8),.equal(t9));
  comp_4_bit c4(.i1(i1[15:12]),.i2(inp2[15:12]),.less(t10),.greater(t11),.equal(t12));
  
  
  
  and b1(y1,t2,t6,t9,t12);
  
  and b2(y2,t1,t6,t9,t12);
  
  and b3(y3,t5,t9,t12);
  
  and b4(y4,t4,t9,t12);
  
  and b5(y5,t8,t12);
  
  and b6(y6,t7,t12);
  
 
  and b7(equal,t3,t6,t9,t12);
  
  or b8(greater,y1,y3,y5,t11);

  or b9(less,y2,y4,y6,t10);
  
  
  assign op1={less,greater};
  always@(*)begin
    case(op1)
      2'b00 : begin 
        comp = equal;
        $display("inp1=inp2");
      end
      2'b01 : begin
        comp = greater;
        $display("i1>i2");
      end
      2'b10 :begin
        comp = less;
        $display("i1<i2");
      end
    endcase
  end
  
endmodule
 module comp(i1,i2,less,greater,equal);
  input i1,i2;
  output reg less,greater,equal;
  wire t1,t2;
  
  not n1(t1,i2);
  and a1(greater,t1,i1);
  xnor x1(equal,i1,i2);
  not n2(t2,i1);
  and a2(less,t2,i2);
endmodule

module comp_4_bit(i1,i2,less,greater,equal);
  input [3:0]i1,i2;
  output reg less,greater,equal;
  wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12;
  wire y1,y2,y3,y4,y5,y6;
  
  comp c1(.i1(i1[0]),.i2(i2[0]),.less(t1),.greater(t2),.equal(t3));
  comp c2(.i1(i1[1]),.i2(i2[1]),.less(t4),.greater(t5),.equal(t6));
  comp c3(.i1(i1[2]),.i2(i2[2]),.less(t7),.greater(t8),.equal(t9));
  comp c4(.i1(i1[3]),.i2(inp2[3]),.less(t10),.greater(t11),.equal(t12));
  
   
  and b1(y1,t2,t6,t9,t12);
  
  and b2(y2,t1,t6,t9,t12);
  
  and b3(y3,t5,t9,t12);
  
  and b4(y4,t4,t9,t12);
  
  and b5(y5,t8,t12);
  
  and b6(y6,t7,t12);
  
 
  and b7(equal,t3,t6,t9,t12);
  
  or b8(greater,y1,y3,y5,t11);
 
  or b9(less,y2,y4,y6,t10);
  
endmodule
 
module comp_16_bit(i1,i2,comp);
  input [15:0]i1,i2;
  output reg comp;
  wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12;
  wire y1,y2,y3,y4,y5,y6,less,greater,equal;
  wire [1:0]op1;
  comp_4_bit c1(.i1(i1[3:0]),.i2(i2[3:0]),.less(t1),.greater(t2),.equal(t3));
  comp_4_bit c2(.i1(i1[7:4]),.i2(i2[7:4]),.less(t4),.greater(t5),.equal(t6));
  comp_4_bit c3(.i1(i1[11:8]),.i2(i2[11:8]),.less(t7),.greater(t8),.equal(t9));
  comp_4_bit c4(.i1(i1[15:12]),.i2(inp2[15:12]),.less(t10),.greater(t11),.equal(t12));
  
  
  
  and b1(y1,t2,t6,t9,t12);
  
  and b2(y2,t1,t6,t9,t12);
  
  and b3(y3,t5,t9,t12);
  
  and b4(y4,t4,t9,t12);
  
  and b5(y5,t8,t12);
  
  and b6(y6,t7,t12);
  
 
  and b7(equal,t3,t6,t9,t12);
  
  or b8(greater,y1,y3,y5,t11);

  or b9(less,y2,y4,y6,t10);
  
  
  assign op1={less,greater};
  always@(*)begin
    case(op1)
      2'b00 : begin 
        comp = equal;
        $display("inp1=inp2");
      end
      2'b01 : begin
        comp = greater;
        $display("i1>i2");
      end
      2'b10 :begin
        comp = less;
        $display("i1<i2");
      end
    endcase
  end
  
endmodule
 
