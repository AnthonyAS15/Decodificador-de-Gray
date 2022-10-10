`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: testbench_lectura_codigoGray
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Testbench del modulo display_7segmentos.
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_display_7segmentos;

//Entradas
reg clk = 0; //100 MHz
reg reset = 0;
reg [3:0] bin = 0;
//Salidas
wire [7:0] anodo;
wire [6:0] catodos;

//Unidad Bajo Prueba (UUT)
display_7segmentos uut (
    .bin(bin),
    .anodo(anodo),
    .catodos(catodos)
    );

//Variable para hacer las pruebas
reg [4:0] k = 0;
always #5 clk = ~clk;

initial
begin
    bin = 0;
    
    for (k=0; k<16; k=k+1)
    #100 bin = k;
    
    #100 $finish;
    
end

endmodule
