`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Universidad: TEC
// Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura
// 
// Nombre del M�dulo: encender_lucesLED
// Nombre del Proyecto: Introduccion a HDL
// Descripci�n: Recibe un valor binario y hace que se enciendan leds a partir de este c�digo.
// 
//////////////////////////////////////////////////////////////////////////////////


module encender_lucesLED(
    input [3:0] bin,
    input clk,
    input reset,
    output [3:0] led
    );
    
    //Limite del contador para muestrear el valor en el tiempo deseado
    localparam limite = 24999999; //Para obtener una se�al dividida de 2 Hz
    //Formula para la frecuencia deseada:
    //f = 1/T => f = 1/500X10^-3 => f = 2 Hz
    //Formula para tener la frecuencia de la se�al que se quiere:
    //limite = [100 Mhz/(2*Frecuencia_deseada)] - 1 => Frecuencia deseada = 24999999
    
    //Variables para realizar el muestreo de la entrada
    reg [3:0] muestreo_bin = 0;
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
        muestreo_bin <= 0;
      else
      begin
        if(contador == limite)
          muestreo_bin <= bin;
        else
          muestreo_bin <= muestreo_bin;
      end
    end
    
    assign led = bin;
    
endmodule
