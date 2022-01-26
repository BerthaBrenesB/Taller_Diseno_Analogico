module multiplicacion_punto_fijo_tb;
	reg [32:0] A;
	reg [32:0] B;
	logic [32:0] S;
	logic [32:0]m,l,h;
	 multiplicacion_punto_fijo multiplicador(A,B,S);
	
	initial begin
	$display("Iniiciando la simulacion");
	// 9
	A = 32'b00000000000000011000000000000000;
	B = 32'b00000000000000110100000000000000;

	//assert (S == 32'b00000000000001001110000000000000) else  $error("test failed for input combination 1.5 3.25");
	
	// A = 32'b0000 0000 0000 0011 0000 0000 0000 0000;
	// B = 32'b1000 0000 0111 1100 1100 0000 0000 0000;
//	#20
	// assert (S == 32'b10000000011111100100000000000000) else  $error("test failed for input combination 1.5 -3.25");
	
	end
endmodule