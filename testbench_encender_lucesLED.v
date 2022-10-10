`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: testbench_lectura_codigoGray
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Testbench del modulo encender_lucesLED.
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_encender_lucesLED;

//Entradas
reg [3:0] bin = 0;
//Salidas
wire [3:0] led;

//Unidad Bajo Prueba (UUT)
encender_lucesLED uut (
    .bin(bin),
    .led(led)
    );

//Variable para hacer las pruebas
reg [4:0] k = 0;

initial
begin
    bin = 0;
    
    for (k=0; k<16; k=k+1)
    #10 bin = k;
    
    #10 $finish;
    
end

endmodule

