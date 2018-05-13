`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:04:47 05/03/2018 
// Design Name: 
// Module Name:    Memory 
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
module Memory(input clk, input [2:0] address, output reg [7:0] read_data
    );
	 
reg [7:0] memory [6:0];
	 
initial
 begin
	memory [0]=8'b00000001;
	memory [1]=8'b00001010;
	memory [2]=8'b00110010;
	memory [3]=8'b01100100;
	memory [4]=8'b00110010;
	memory [5]=8'b00001010;
	memory [6]=8'b00000001;
 end
 

 
 always@(posedge clk)
begin
	read_data=memory [address];
end


endmodule
