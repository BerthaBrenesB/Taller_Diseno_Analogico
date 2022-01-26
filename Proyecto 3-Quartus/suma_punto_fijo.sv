module suma_punto_fijo(input logic[31:0]a,input logic [31:0]b, output logic [31:0]out);
	

	assign out[31:0] = a[31:0] + b[31:0];
	
		
endmodule