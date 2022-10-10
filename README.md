# Introduccion-a-HDL
Universidad: TEC
Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura

Proyecto II: Introducción a diseño digital en HDL

Nombre del Proyecto: Introduccion a HDL


## Funcionamiento general
Por medio del SystemVerilog y la suite de herramientas de Vivado para desarrollar el sistema completo se trabajará con una FPGA Nexys 4 DDR. Donde se van a recibir 4 entradas por medio de conmutadores en código de Gray. Estas entradas van a ser traducidas a código binario y esto va a ser evidenciado por medio del encendido de 4 leds en dicho código. Finalmente, se tomarán los datos en código binario y se desplegarán en el display de 7 segmentos de la placa en sistema decimal.


   Tabla 1: Código Gray de 4 bits a implementar.

 ![gggg](https://user-images.githubusercontent.com/110042626/194808617-157f27db-a59a-495e-ac99-62b6ac1318bc.PNG)

	




### Subsistema de lectura y decodificación de código Gray
El subsistema de lectura tomará cuatro conmutadores. Luego de esto, los datos recibidos son transformados de código de Gray a código binario, previo a enviarse al siguiente subsistema.

### Subsistema de despliegue de código ingresado traducido a formato binario en luces LED
Recibe los datos ya convertidos a código binario en el subsistema anterior, y los desplegara en 4 luces LED, que de la misma manera representaran cada número en código binario.

### Subsistema de despliegue de código decodificado en display de 7 segmentos
Este subsistema toma los datos en código binario del primer subsistema, y su representación en 4 luces LED, desplegarlos en los dispositivos 7 segmentos disponibles en la placa, de forma decimal.


## Funcionamiento fundamental
### Subsistema de lectura y decodificación de código Gray

El subsistema va a tomar los 4 conmutadores el código de Gray. Luego de esto, los datos recibidos son transformados a código binario.

#### Diagrama de Bloques:

![194486134-90e57969-9439-4b05-a338-b7f297bd80a4](https://user-images.githubusercontent.com/110042626/194795708-cb491c98-03eb-46f2-a12e-eb9a159d5ac2.jpg)


Primeramente, tal y como se observa en el diagrama de bloques, el parametro de entrada del subsistema va a ser los switches en la tarjeta Nexys, y se traduciran en codigo binario, para esta lectura nos basaremos en la "Tabla 1: Código de Gray de 4 bits a implementar".

### Subsistema de despliegue de código ingresado traducido a formato binario en luces LED

El subsistema vuelve a tomar los 4 conmutadores del código de Gray, transformados a código binario.

Diagrama de Bloques:

![194486013-ec33d9ab-e7c4-4301-a9b9-4a03abb0ea36](https://user-images.githubusercontent.com/110042626/194795738-24175caf-2cc0-44c8-b2df-3097765068dd.png)

AL igual que con el subsistema anterior en el diagrama de bloques, el parametro de entrada del subsistema va a ser los switches en la tarjeta Nexys, y se traduciran en codigo binario, para esta lectura nos basaremos en la "Tabla 1: Código de Gray de 4 bits a implementar", donde el resultado se vera representado en la tarjeta por medio de cuatro luces LED, que representaran su respectivo codigo binario.

### Subsistema de despliegue de código decodificado en display de 7 segmentos

Por ultimo, el subsistema vuelve a tomar los 4 conmutadores del código de Gray, transformados a código binario representados con LEDs.

Diagrama de Bloques:

![194472894-b720fe69-046f-4f92-96e9-ab307fe911aa](https://user-images.githubusercontent.com/110042626/194795104-07a0b308-c1b0-4d4c-a7bb-1cc5055f2630.png)

AL igual que con el subsistema anterior en el diagrama de bloques, el parametro de entrada del subsistema va a ser los switches en la tarjeta Nexys, y se traduciran en codigo binario, para esta lectura nos basaremos en la "Tabla 1: Código de Gray de 4 bits a implementar", donde el resultado se vera representado en la tarjeta por medio de cuatro luces LED, que representaran su respectivo codigo binario. Toma valor representadao en codigo binario, mostrado a traves de las cuatro luces LED; este valor lo convierte en decimal, luego en base a sus unidades o decimas, se representa desplegado en los dispositivos de 7 segmentos disponibles en la placa, de forma decimal.


### Diagrama de Bloques: Representacion general

![d5d8b3a0-5005-492a-93b9-d065536167dd](https://user-images.githubusercontent.com/110042626/194796472-c744d1e3-d0a3-4859-8be5-923160706dde.jpg)

##  Ejemplo y análisis de una simulación









![ffffffffff 1](https://user-images.githubusercontent.com/110042626/194807986-e38ddbe8-0563-4c65-9250-08b8f1397823.jpg)







![ffffffffffffffffffff2](https://user-images.githubusercontent.com/110042626/194808007-efd9c09c-32e0-4e5d-baed-1a94ed42435b.jpg)




##  Consumo de recursos en la FPGA y del consumo de potencia reportado por Vivado

TESTBENCH















##  Reporte de velocidades máximas de reloj posibles


![bd213152-ad7a-4fda-9e24-2e82d0307d07](https://user-images.githubusercontent.com/110042626/194801235-36d773a5-4554-4667-8dd1-29996cbbc452.jpg)


![9e9f7cb9-69fe-4741-bf7e-9780bf5a379b](https://user-images.githubusercontent.com/110042626/194801244-04c56e33-6ed4-4c0f-b81a-bf7967a85e73.jpg)






##  Principales problemas hallados durante el trabajo y de las soluciones aplicadas

•	Instalar Programas Vivado

En la instalación del programa Vivado 2018.3 existieron varias dificultades a la hora de descargarlo, debido a que no  dejaba instalarlo de la manera correcta, por lo que se decidio acudir a la ayuda del Prof. Kaleb Alfaro Badilla, el cual me proporcionó el link de instalación del programa. La ayuda facilito el proceso de instalacion, sin embargo, nuevamente se presentaron dificultades al momento de la validación de la cuenta, sin embargo, esto pudo ser solucionado al usar el correo institucional, en lugar del personal.

•	Generar las pruebas de banco o testbenches necesarios

Dentro de las dificultades al realizar las "Simulaciones RTL", al principio no se estaba definiendo el testbench como top en la aplicación del vivado, así que, al realizar la simulación, esta misma no ejecutaba la simulación del testbench, por lo cual, a la hora de simularla aparecía en términos de impedancias. Al momento de cambiarlo, se pudieron realizar las pruebas con éxito dentro del plazo establecido.


