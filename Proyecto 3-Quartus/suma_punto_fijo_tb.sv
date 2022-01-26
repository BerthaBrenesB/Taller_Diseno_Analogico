module suma_punto_fijo_tb;
	reg [31:0] A;
	reg [31:0] B;
	reg [31:0] S;
	
	 suma_punto_fijo sumador(A,B,S);
	
	initial begin
	$display("Iniiciando la simulacion");
	// 9
	A = 32'b00000000000000011000000000000000;
	B = 32'b00000000000000110100000000000000;
	#20
	assert (S == 32'b00000000000001001100000000000000) else  $error("test failed for input combination 1.5 3.25");
	
		A = 32'b00000000000000011000000000000000;
	   B = 32'b10000000011111001100000000000000;
		#20
		assert (S == 32'b10000000011111100100000000000000) else  $error("test failed for input combination 1.5 -3.25");
	
	end
endmodule