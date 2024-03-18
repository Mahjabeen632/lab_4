`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 10:02:54 AM
// Design Name: 
// Module Name: lab4_b_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab4_b_tb;
logic [3:0]num1;
logic [2:0]sel1;
logic segA1;
logic segB1;
logic segC1;
logic segD1;
logic segE1;
logic segF1;
logic segG1;
logic A00;
logic A11;
logic A22;
logic A33;
logic A44;
logic A55;
logic A66;
logic A77;

lab_4b DUT(
.num(num1),
.sel(sel1),
.segA(segA1),
.segB(segB1),
.segC(segC1),
.segD(segD1),
.segE(segE1),
.segF(segF1),
.segG(segG1),
.A0(A00),
.A1(A11),
.A2(A22),
.A3(A33),
.A4(A44),
.A5(A55),
.A6(A66),
.A7(A77)
);
initial
begin
sel1  = 3'b000;
#160;
sel1 = 3'b001;
#160;
sel1 = 3'b010;
#160;
sel1 = 3'b011;
#160;
sel1 = 3'b100;
#160;
sel1 = 3'b101;
#160;
sel1 = 3'b110;
#160;
sel1 = 3'b111;
#160;
$stop;
end

initial
begin
num1 = 4'b0000; 
#10;
num1 = 4'b0001;
#10;
num1 = 4'b0010;
#10;
num1 = 4'b0011;
#10;
num1 = 4'b0100;
#10;
num1 = 4'b0101;
#10;
num1 = 4'b0110;
#10;
num1 = 4'b0111;
#10;
num1 = 4'b1000;
#10;
num1 = 4'b1001;
#10;
num1 = 4'b1010;
#10;
num1 = 4'b1011;
#10;
num1 = 4'b1100;
#10;
num1 = 4'b1101;
#10;
num1 = 4'b1110;
#10;
num1 = 4'b1111;
#10;
$stop;
end

endmodule


