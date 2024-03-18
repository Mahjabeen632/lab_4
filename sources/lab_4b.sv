`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2024 06:54:27 PM
// Design Name: 
// Module Name: lab_4b
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


module lab_4b( input [3:0] num, [2:0] sel,
 output A0,A1,A2,A3,A4,A5,A6,A7,
 output segA, segB, segC ,segD, segE, segF, segG
  );
logic a1,a2,a3;
logic s1,s2,s3,s4;
always_comb
begin 
a1 = sel[2];
a2 = sel[1];
a3 = sel[0];
end
always_comb
begin 
s1 = num[3];
s2 = num[2];
s3 = num[1];
s4 = num[0];
end
assign A0 = (a1 & a2 & a3) ;
assign A1 = (a1 & a2 & (!a3));
assign A2 = (a1 & (!a2) & a3 );
assign A3 = (a1 & !(a2 & a3));
assign A4 =(!a1)&(a2 & a3);
assign A5 =(!a1) & (a2 & (!a3)) ;
assign A6 =(!(a1 & a2))& (a3) ;
assign A7 =(!(a1 & a2 & a3));
       
assign segA = ((!s1 & s3)  ^ (s2 | s4 )) | (s1 & s4)^(s3 | s2);
assign segB = ( s1 & s3 & s4) |(s2 & s3 & (!s4) |((!s1) & (s2 & (!s3) & s4)));
assign segC = (s1 & s2 & s3 )| (s1 & s2 & (!s4)) | ((!(s1 & s2 & s3)) & (s4) ) | ((!(s1 & s2 & s4))& s4);
assign segD =  (s2 & s3 & s4) | ((!(s1 & s3 & s4)) & s2) |  ((!(s1 & s2 & s3 ))& s4) | ((s1 & s3)&(!(s2 & s4))) ;
assign segE =  (!s1) & (s4) |(!s1 & s3) & (s2) | (!s2 & s3) & (s4 ) ;
assign segF =  (! s1 & s2) & (s4) | (!s1) & (s3 & s4) | (!s1 & s2 )& (s4) ;
assign segG =   (! s1 & s2 & s3) | (s1 & s2 ) & (!s3 & s4) | (!s1) & (s2 & s3 & s4)  ;

 
endmodule
