module Filtro_Digital_tb;
	reg [31:0]xn1;
	reg [31:0]xn2;
	reg salida;
	int fd;
	Filtro_Digital fir(xn1,xn2,salida);
	initial begin
		$display("Iniiciando la simulacion");
		fd = $fopen("./Binario.txt","r");
		$fgets(xn1,fd);
		$fgets(xn2,fd);
		
		fd = $fopen("./Binario.txt","w");
		
		
		
		$fwrite(fd, salida);
		$fclose(fd);

	end
endmodule