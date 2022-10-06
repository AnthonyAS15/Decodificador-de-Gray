`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: control_anodo
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Enciende el anodo a partir del contador.
// 
//////////////////////////////////////////////////////////////////////////////////


module control_anodo(
    input contador_actualizar, //Cada 10 kHz
    output reg [7:0] anodo = 0
    );

    always @ (contador_actualizar)
        begin
            case (contador_actualizar)
                1'b0: anodo = 8'b11111110; //Encender digito 1 (unidades)
                1'b1: anodo = 8'b11111101; //Encender digito 2 (decenas)
            endcase
        end
    
endmodule