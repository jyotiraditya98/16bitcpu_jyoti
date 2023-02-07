/*module mux4x1(y, i0, i1, i2, i3, s0, s1);
  input i0, i1, i2, i3, s0, s1;
  output y;
  assign y<=(~s0 & ~s1 & i0)|(~s0 & s1 & i0)|(s0 & ~s1 & i0)|(s0 & s1 & i0);
endmodule
*/

// mux to collect o/p from functional unit
//gate level mux
module mux4x1(y,i0,i1,i2,i3,s0,s1,s2);
  
  input i0, i1, i2, i3, s0, s1;
  output y;
  wire p,q,r,s,a,b;
  
  not not1(a,s0);
  not not2(b,s1);
  
  and and2(p,i3,s0,s1 );
  and and2(p,i0,s1,a );
  and and2(p,i0,s0,b );
  and and2(p,i0,a,b );
  or or1(y,p,q,r,s);
  
endmodule
