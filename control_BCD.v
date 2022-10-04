`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: control_BCD
// Nombre del Proyecto: Introduccion a HDL
// Descripción: 
// 
//////////////////////////////////////////////////////////////////////////////////


module control_BCD(
    input [3:0] bin, //Entrada convertida a binario
    input contador_actualizar, //Cada 10 kHz
    output reg [3:0] digito = 0 //Digito que se va a mostrar en la posicion correspondiente
    );

    always @ (bin, contador_actualizar)
        begin
            if (bin < 10)
            begin
                case (contador_actualizar)
                    2'b0: digito = bin; //Digito que se muestra en posicion 1 (unidades)
                    2'b1: digito = 4'b0000; //Digito que se muestra en posicion 2 (decenas)
                endcase
            end
            else
                case (contador_actualizar)
                    2'b0: digito = bin - 4'b1010; //Digito que se muestra en posicion 1 (unidades)
                    2'b1: digito = 4'b0001; //Digito que se muestra en posicion 2 (decenas)
                endcase
        end
    
endmodule