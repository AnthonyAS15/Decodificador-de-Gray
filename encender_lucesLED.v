`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: encender_lucesLED
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Recibe un valor binario y hace que se enciendan leds a partir de este código.
// 
//////////////////////////////////////////////////////////////////////////////////


module encender_lucesLED(
    input [3:0] bin,
    output [3:0] led
    );
    
    assign led = bin;
    
endmodule
