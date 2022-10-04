`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: display_7segmentos
// Nombre del Proyecto: Introduccion a HDL
// Descripción: 
// 
//////////////////////////////////////////////////////////////////////////////////


module display_7segmentos(
    input clk, //100 MHz
    input [3:0] bin,
    output [7:0] anodo,
    output [6:0] catodos
    );
    
    wire reloj_actualizacion;
    wire contador_actualizar;
    wire [3:0] digito;
    
    divisor_reloj D (clk, reloj_actualizacion); //D por divisor
    contador_actualizacion C (reloj_actualizacion, contador_actualizar); //C por contador;
    
    control_anodo A (contador_actualizar, anodo); //A por anodo;
    control_BCD BCD (bin, contador_actualizar, digito); //BCD
    catodos_BCD CS (digito, catodos); //CS por catodos.
    
endmodule
