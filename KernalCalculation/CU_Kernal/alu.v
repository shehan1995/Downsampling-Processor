`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:33 03/26/2018 
// Design Name: 
// Module Name:    alu 
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
module alu(input [15:0] A, input [15:0] B, input clk, output reg [15:0] result, input [2:0] operation
    );

wire [15:0] r1;
wire [15:0] r2;
wire [15:0] r3;
wire [15:0] r4;


parameter ADD=3'b000, SUB=3'b001, MULTIPLY=3'b010, DIVIDE=3'b011;

adder ad(.a(A[15:0]), .b(B[15:0]), .s(r1));
sub subs(.a(A[15:0]), .b(B[15:0]), .s(r2));
division di(.A(A[15:0]), .B(B[15:0]), .Res(r3));
multiply multi(.product(r4), .multiplier(A[7:0]), .multiplicand(B[7:0]));

always@(posedge clk)
begin
	case(operation)
		ADD:begin result=r1;
			end
		SUB: begin result=r2;
		end
		MULTIPLY:begin result=r4;
			end
		DIVIDE: begin result=r3;
		end
		default:result=B;
		endcase

end
endmodule

