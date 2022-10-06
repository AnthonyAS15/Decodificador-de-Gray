`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del M�dulo: contador_actualizacion
// Nombre del Proyecto: Introduccion a HDL
// Descripci�n: Cuenta para decidir el anodo que se va a usar.
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