`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 17:49:22
// Design Name: 
// Module Name: vending_machine_tb
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


module vending_machine_tb();
reg clk;
reg rst;
reg [1:0] coin;

wire Z;
wire change_given;

vneding_machine_tb(.clk(clk),.rst(rst),.coin(coin),.Z(Z),.change_given(change_given));
initial begin
 rst =1;
 clk=0;
 
 #6 rst=0;
 coin=1;
 #11 coin=1;
 #16 coin=1;
 #25 $finish;
 end 
 always #5 clk=~clk;
 
 
endmodule
