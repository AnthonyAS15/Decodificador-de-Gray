`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: contador_actualizacion
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Cuenta para decidir el anodo que se va a usar.
// 
//////////////////////////////////////////////////////////////////////////////////


module contador_actualizacion(
    input reloj_actualizacion,
    input reset,
    output reg contador_actualizar = 0
    );

    always @ (posedge reloj_actualizacion or posedge reset)
        begin
            if (reset)
                contador_actualizar <= 0;
            else
                contador_actualizar <= ~contador_actualizar;
        end
    
endmodule