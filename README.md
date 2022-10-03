# Introduccion-a-HDL
Segundo proyecto del curso de Diseño Lógico

## Funcionamiento general
Por medio de una FPGA Nexys 4 DDR, se van a recibir 4 entradas por medio de conmutadores en código de Gray. Estas entradas van a ser traducidas a código binario y esto va a ser evidenciado por medio del encendido de 4 leds en dicho código. Finalmente, se tomarán los datos en código binario y se desplegarán en el display de 7 segmentos de la placa en sistema decimal.

## Funcionamiento de cada subsistema
### Subsistema de lectura y decodificación de código Gray
Toma de los 4 conmutadores el código de Gray. Luego de esto, los datos recibidos son transformados a código binario.

### Subsistema de despliegue de código ingresado traducido a formato binario en luces LED
Recibe los datos ya convertidos a código binario y los despliega en 4 luces LED.

### Subsistema de despliegue de código decodificado en display de 7 segmentos
Toma los datos del código binario y los despliega en el display de 7 segmentos de la placa de forma decimal.
