`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:27:08 03/22/2018 
// Design Name: 
// Module Name:    mltiply 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiply(product,multiplier,multiplicand); 
   input [7:0]  multiplier, multiplicand;
   output        product;

   reg [15:0]    product;

   integer       i;

   always @( multiplier or multiplicand )
     begin
        
        product = 0;
            
        for(i=0; i<8; i=i+1)
          if( multiplier[i] == 1'b1 ) product = product + ( multiplicand << i );
  
     end
     
endmodule
