// EEM16 - Logic Design
// Design Assignment #1 - Problem #1
// dassign1_1.v
module inverter(y,a);
    output y;
    input a;
  	assign y = ~a;
endmodule

module nand2(y,a,b);
    output y;
    input a,b;
  	assign y = ~(a & b);
endmodule

module nand3(y,a,b,c);
  output y;
  input a,b,c;
  assign y = ~(a & b & c);
endmodule

module nor2(y,a,b);
  output y;
  input a,b;
  assign y = ~(a | b);
endmodule

module nor3(y,a,b,c);
  output y;
  input a,b,c;
  assign y = ~(a | b | c);
endmodule

module mux2(y,a,b,sel);
  output y;
  input a,b;
  input sel;
  assign y = sel ? a : b;
endmodule

module xor2(y,a,b);
  output y;
  input a,b;
  assign y = a ^ b;
endmodule

module dassign1_1 (y,a,b,c,d,e,f,g);
    output y;
    input a,b,c,d,e,f,g;
  	wire abc;
  	wire abcd;
  	wire fg;
  	wire efg;
  	wire all;
  	wire notall;
  	nand3 abcnand (abc, a, b, c);
  	nand2 abcdnand (abcd, abc, d);
  	nand2 fgnand (fg, f, g);
  	nor2 efgnor (efg, e, fg);
  	nor2 allnor (all, abcd, efg);
  	inverter all_not (notall, all);
  	assign y = notall;
endmodule