`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:20 03/22/2018 
// Design Name: 
// Module Name:    t1 
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


module adder(a,b,s);

  input a,b;

  output s;

  wire [15:0] a,b;

  reg cin=1'b0;

  reg [15:0] s;

  reg cout;

  always @ (a or b)

  begin
	cin=1'b0;
    {cout,s}=a+b+cin;

  end

endmodule