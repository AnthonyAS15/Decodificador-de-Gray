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
    input clk,
    input reset,
    output reg [3:0] bin
    );
    
    //Limite del contador para muestrear la salida en el tiempo deseado
    localparam limite = 24999999; //Para obtener una señal dividida de 2 Hz
    //Formula para la frecuencia deseada:
    //f = 1/T => f = 1/500X10^-3 => f = 2 Hz
    //Formula para tener la frecuencia de la señal que se quiere:
    //limite = [100 Mhz/(2*Frecuencia_deseada)] - 1 => Frecuencia deseada = 24999999
    
    //Variables para realizar el muestreo de la entrada
    reg [3:0] muestreo_a = 0;
    reg [25:0] contador = 0;
    
    always @(posedge clk or posedge reset)
    begin
      if(reset)
        contador <=0;
      else
      begin
          if (contador == limite)
              contador <= 0;
          else
            contador <= contador +1;
      end
    end
    
    always @(posedge clk or posedge reset)
    begin
      if(reset)
        muestreo_a <= 0;
      else
      begin
        if(contador == limite)
          muestreo_a <= a;
        else
          muestreo_a <= muestreo_a;
      end
    end
    
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
