`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: testbench_lectura_codigoGray
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Testbench del modulo lectura_codigo_Gray.
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_lectura_codigoGray;

//Entradas
reg [3:0] a = 0;
//Salidas
wire [3:0] bin;

//Unidad Bajo Prueba (UUT)
lectura_codigoGray uut (
    .a(a),
    .bin(bin)
    );

//Variable para hacer las pruebas
reg [4:0] k = 0;

initial
begin
    a = 0;
    
    for (k=0; k<16; k=k+1)
    #10 a = k;
    
    #10 $finish;
    
end

endmodule
