`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: decodificador_deGray
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Toma una entrada en codigo de Gray, lo traduce a binario, enciende leds a partir del resultado binario
//              y enciende un display de 7 segmentos con el resultado en sistema decimal.
// 
//////////////////////////////////////////////////////////////////////////////////


module decodificador_deGray(
    input clk,
    input [3:0] a,
    output [3:0] led,
    output [7:0] anodo,
    output [6:0] catodos
    );
    
    wire [3:0] bin;
    
    lectura_codigoGray L (a, bin); // L por lectura
    encender_lucesLED E (bin, led); //E por encender
    display_7segmentos S (clk, bin, anodo, catodos); //S por segmentos
    
endmodule
