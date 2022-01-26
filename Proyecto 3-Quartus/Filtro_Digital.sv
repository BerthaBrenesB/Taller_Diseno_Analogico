module Filtro_Digital(input logic [31:0]xd1,input logic [31:0]xd2, output logic s);

	reg x, wn,nwn1,wn1,y;
	reg [31:0] A,nA1;
	reg [31:0] B,B1,B0;
	assign A = 32'b00000000000000000000000000000001;
	assign B = 32'b00000000000000000000000000000001;
	// primera suma
	suma_punto_fijo sumador(xd1,xd2,x);
	// suma con latched
	suma_punto_fijo sumador2(x,A1,wn);
	// latched de a1 y b1
	latched_D retardador(w,w,wn1,nw1);
	// b1
	multiplicacion_punto_fijo b1(wn1,B,B1);
	// - a1
	multiplicacion_punto_fijo a1(nwn1,A,A1);
	// b0
	multiplicacion_punto_fijo b0(wn,B,B0);
	
	suma_punto_fijo sumador4(B0,B1,y);
endmodule