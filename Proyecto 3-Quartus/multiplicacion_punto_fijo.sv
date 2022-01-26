module multiplicacion_punto_fijo(input logic[32:0]A,input logic [32:0]B, output logic [64:0]s);
//A 32'b0000 0000 0000 0001 1000 0000 0000 0000;
//a=0000 0000 0000 0001 b=1000 0000 0000 0000

//B 32'b0000 0000 0000 0011 0100 0000 0000 0000;
//c=0000 0000 0000 0011 d=0100 0000 0000 0000
	reg [15:0] b,d,a,c;
	reg [32:0] high,mid,low;
	
	assign b = A[32:16];
	assign d = A[15:0];
	assign a = B[32:16];
	assign c = B[15:0];
	
	assign high = a*c;
	assign mid = (a*d) + (b*c);
	assign low = (b*d) >> 5'b10100;
	assign s = high + mid + low;
	
	
endmodule