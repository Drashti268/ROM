`timescale 1ns / 1ps
module ROM_tb;

	// Inputs
	reg en;
	reg clk;
	reg [3:0] addr;

	// Outputs
	wire [3:0] data;

	// Instantiate the Unit Under Test (UUT)
	ROM uut (
		.en(en), 
		.clk(clk), 
		.addr(addr), 
		.data(data)
	);

	initial begin
    clk=1'b1;
	 forever #5 clk=~clk;
	end
	initial
	  begin
	      en=1'b0;
			#10;
			en=1'b1;
			addr=4'b1111;
			#10;
			
			addr=4'b0010;
			#10;
			
			addr=4'b1010;
			end
      
endmodule

