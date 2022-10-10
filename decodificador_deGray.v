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
    input clk, //100 MHz
    input reset, //Entrada del boton
    input [3:0] a, //Entrada de los conmutadores
    output [3:0] led,
    output reg led_reset,
    output [7:0] anodo,
    output [6:0] catodos
    );
    
    wire [3:0] bin;
    
    //Encender un LED para indicar el funcionamiento del reset
    always @ (reset)
    if (reset)
        led_reset = 1;
    else
        led_reset = 0;
    
    lectura_codigoGray L (a, clk, reset, bin); // L por lectura
    encender_lucesLED E (bin, clk, reset, led); //E por encender
    display_7segmentos S (clk, reset, bin, anodo, catodos); //S por segmentos
    
endmodule
