# Introduccion-a-HDL
Universidad: TEC
Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura

Proyecto II: Introducción a diseño digital en HDL

Nombre del Proyecto: Introduccion a HDL


## Funcionamiento general
Por medio del SystemVerilog y la suite de herramientas de Vivado para desarrollar el sistema completo se trabajará con una FPGA Nexys 4 DDR. Donde se van a recibir 4 entradas por medio de conmutadores en código de Gray. Estas entradas van a ser traducidas a código binario y esto va a ser evidenciado por medio del encendido de 4 leds en dicho código. Finalmente, se tomarán los datos en código binario y se desplegarán en el display de 7 segmentos de la placa en sistema decimal.

### Subsistema de lectura y decodificación de código Gray
El subsistema de lectura tomará cuatro conmutadores. Luego de esto, los datos recibidos son transformados de código de Gray a código binario, previo a enviarse al siguiente subsistema.

### Subsistema de despliegue de código ingresado traducido a formato binario en luces LED
Recibe los datos ya convertidos a código binario en el subsistema anterior, y los desplegara en 4 luces LED, que de la misma manera representaran cada número en código binario.

### Subsistema de despliegue de código decodificado en display de 7 segmentos
Este subsistema toma los datos en código binario del primer subsistema, y su representación en 4 luces LED, desplegarlos en los dispositivos 7 segmentos disponibles en la placa, de forma decimal.


## Funcionamiento fundamental
### Subsistema de lectura y decodificación de código Gray
Diegrama de Bloques
![Capture](https://user-images.githubusercontent.com/110042626/194794808-328a7e98-f7cc-44cd-9343-8f0244a8cdae.PNG)

### Subsistema de despliegue de código ingresado traducido a formato binario en luces LED

### Subsistema de despliegue de código decodificado en display de 7 segmentos











