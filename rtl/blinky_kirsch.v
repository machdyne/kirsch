// KIRSCH BLINKY

module blinky_kirsch
(

	input clk48,

	output pmod_a1,
	output pmod_a2,
	output pmod_a3,
	output pmod_a4,
	output pmod_a7,
	output pmod_a8,
	output pmod_a9,
	output pmod_a10,

	output led 

);

	reg [28:0] counter = 0;

	assign pmod_a10 = counter[28];
	assign pmod_a9 = counter[27];
	assign pmod_a8 = counter[26];
	assign pmod_a7 = counter[25];
	assign pmod_a4 = counter[24];
	assign pmod_a3 = counter[23];
	assign pmod_a2 = counter[22];
	assign pmod_a1 = counter[21];

   assign led = ~counter[25];

   always @(posedge clk48) begin
      counter <= counter + 1;
   end

endmodule
