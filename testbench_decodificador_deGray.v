`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: testbench_lectura_codigoGray
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Testbench del modulo decodificador_deGray.
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_decodificador_deGray;

//Entradas
reg clk = 0; //100 MHz
reg reset = 0;
reg [3:0] a = 0;
//Salidas
wire [3:0] led;
wire led_reset;
wire [7:0] anodo;
wire [6:0] catodos;

//Unidad Bajo Prueba (UUT)
decodificador_deGray uut (
    .clk(clk),
    .reset(reset),
    .a(a),
    .led(led),
    .led_reset(led_reset),
    .anodo(anodo),
    .catodos(catodos)
    );

//Variable para hacer las pruebas
reg [4:0] k = 0;
always #5 clk = ~clk;

initial
begin
    a = 0;
    
    for (k=0; k<16; k=k+1)
    #100 a = k;
    
    #100 $finish;
    
end

endmodule
