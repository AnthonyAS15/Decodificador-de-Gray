`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del Módulo: lectura_codigoGray
// Nombre del Proyecto: Introduccion a HDL
// Descripción: Toma una entrada en codigo de Gray y lo traduce a código binario.
// 
//////////////////////////////////////////////////////////////////////////////////


module lectura_codigoGray(
    input [3:0] a,
    output reg [3:0] bin
    );
    
    always @ (a)
        begin
            case (a)
                4'b0000: bin = 4'b0000; // 0 binario
                4'b0001: bin = 4'b0001; // 1 binario
                4'b0011: bin = 4'b0010; // 2 binario
                4'b0010: bin = 4'b0011; // 3 binario
                4'b0110: bin = 4'b0100; // 4 binario
                4'b0111: bin = 4'b0101; // 5 binario
                4'b0101: bin = 4'b0110; // 6 binario
                4'b0100: bin = 4'b0111; // 7 binario
                4'b1100: bin = 4'b1000; // 8 binario
                4'b1101: bin = 4'b1001; // 9 binario
                4'b1111: bin = 4'b1010; // 10 binario
                4'b1110: bin = 4'b1011; // 11 binario
                4'b1010: bin = 4'b1100; // 12 binario
                4'b1011: bin = 4'b1101; // 13 binario
                4'b1001: bin = 4'b1110; // 14 binario
                4'b1000: bin = 4'b1111; // 15 binario
            endcase
        end
        
endmodule
