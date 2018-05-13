`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:40 03/22/2018 
// Design Name: 
// Module Name:    sub 
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
module sub(a,b,s);

  input a,b;

  output s;

  wire [15:0] a,b;

  reg cin;

  reg [15:0] s;

  reg cout;

  always @ (a or b)

  begin
	cin=1'b1;
    {cout,s}=~a+b+cin;

  end

endmodule

