// EEM16 - Logic Design
// Design Assignment #1 - Problem #3
// dassign1_3.v
module dassign1_3(y,x);
   output y;
   reg y;
   input [3:0] x;
   
  always @(x)
    case({x[3],x[2],x[1],x[0]})
      4'b0011 : y = 'b1;
      4'b0110 : y = 'b1;
      4'b0111 : y = 'b1;
      4'b1001 : y = 'b1;
      4'b1010 : y = 'b1;
      4'b1011 : y = 'b1;
      default : y = 'b0;
    endcase
  
endmodule