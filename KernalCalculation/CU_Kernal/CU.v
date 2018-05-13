`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:18 05/03/2018 
// Design Name: 
// Module Name:    CU 
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
module CU(input clk, output reg [15:0] result1
    );

wire [7:0] op;
wire [7:0] op1;
reg [2:0] operation;
wire [15:0] res;
wire [15:0] res1;
reg [2:0] address;
reg [15:0] result [6:0];
reg [15:0] reg1;
reg [15:0] reg2;


initial
begin
address=3'b000;
operation=3'b010;
end

Kernal knl(.clk(clk), .address(address), .read_data(op));
Memory mem(.clk(clk), .address(address), .read_data(op1));
alu a1(.A({8'b00000000,op}),.B({8'b00000000,op1}),.clk(clk),.result(res),.operation(operation)); 
alu a2(.A({reg1}),.B({reg2}),.clk(clk),.result(res1),.operation(operation)); 

integer counter=0;
integer cntr=0;
integer counter1=0;
integer cntr1=3;

always@(posedge clk)
begin
	if (cntr<2) begin
		cntr<=cntr+1;
		result[counter-1]<=res;
	end
	else if (counter<7) begin
	
		counter<=counter +1;
		address<=address+3'b001;
		cntr<=0;
	end
	else begin
		
		if(cntr1<2) begin
			cntr1<=cntr1+1;
			result[counter1]<=res1;
		end
		else if(counter1<7) begin
			operation=3'b000;
			reg1<=result[counter1];
			reg2<=result[counter1+1];
			
			counter1<=counter1 +1;
			cntr1<=0;
		end
		else begin
			reg1<=result[6];
			reg2<=16'b0000000000001000;
			cntr1<=0;
			operation=3'b011;
		end
		//result1=result[6];
	end
	if (cntr1==2 && counter1==7) begin
		result1=res1;
	end
	
end
 
endmodule
