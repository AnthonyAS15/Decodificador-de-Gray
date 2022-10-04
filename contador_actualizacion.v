`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: contador_actualizacion
// Nombre del Proyecto: Introduccion a HDL
// Descripción: 
// 
//////////////////////////////////////////////////////////////////////////////////


module contador_actualizacion(
    input reloj_actualizacion,
    output reg contador_actualizar = 0
    );

    always @ (posedge reloj_actualizacion)
        begin
            contador_actualizar <= contador_actualizar +1;
        end
    
endmodule