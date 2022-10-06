`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del M�dulo: divisor_reloj
// Nombre del Proyecto: Introduccion a HDL
// Descripci�n: Divide la frecuencia del reloj en la frecuencia deseada.
// 
//////////////////////////////////////////////////////////////////////////////////


module divisor_reloj(
    input clk, // 100 Mhz
    output reg clk_dividido
    );
    //Divisor para obtener la divisi�n de salida deseada
    localparam divisor = 4999; //Para obtener una se�al dividida de 10 kHz
    //Valor_dividido = 100 Mhz/(2*Frecuancia_deseada) - 1
    
    //Contador
    integer contador = 0;
    
    always @ (posedge clk)
        begin
            if (contador == divisor)
                contador <= 0; //Resetear el valor
            else
                contador <= contador +1;
        end
    // Divisor de reloj
    always @ (posedge clk)
        begin
            if (contador == divisor)
                clk_dividido <= ~clk_dividido; //Invertir la se�al
            else
                clk_dividido <= clk_dividido; //Almacenar el valor
        end
    
endmodule
