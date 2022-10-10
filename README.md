# Introduccion-a-HDL
Universidad: TEC
Ingenieros: Anthony Artavia - Diego Huertas - Justin Segura

Proyecto II: Introducción a diseño digital en HDL

Nombre del Proyecto: Introduccion a HDL


## Funcionamiento general
Por medio del lenguaje Verilog y la suite de herramientas de Vivado para desarrollar el sistema completo se trabajará con una FPGA Nexys 4 DDR. Donde se van a recibir 4 entradas por medio de conmutadores en código de Gray. Estas entradas van a ser traducidas a código binario y esto va a ser evidenciado por medio del encendido de 4 leds en dicho código. Finalmente, se tomarán los datos en código binario y se desplegarán en el display de 7 segmentos de la placa en sistema decimal.


#### Tabla 1: Código Gray de 4 bits a implementar.

 ![gggg](https://user-images.githubusercontent.com/110042626/194808617-157f27db-a59a-495e-ac99-62b6ac1318bc.PNG)


### Subsistema de lectura y decodificación de código Gray
El subsistema de lectura tomará cuatro conmutadores. Luego de esto, los datos recibidos son transformados de código de Gray a código binario, previo a enviarse al siguiente subsistema.

### Subsistema de despliegue de código ingresado traducido a formato binario en luces LED
Recibe los datos ya convertidos a código binario en el subsistema anterior, y los desplegara en 4 luces LED, que de la misma manera representaran cada número en código binario.

### Subsistema de despliegue de código decodificado en display de 7 segmentos
Este subsistema toma los datos en código binario del primer subsistema, y su representación en 4 luces LED, desplegarlos en los dispositivos 7 segmentos disponibles en la placa, de forma decimal.


## Funcionamiento fundamental
### • Subsistema de lectura y decodificación de código Gray

El subsistema va a tomar los 4 conmutadores el código de Gray. Luego de esto, los datos recibidos son transformados a código binario.

#### Diagrama de Bloques:

![lectura](https://user-images.githubusercontent.com/110042626/194828892-24d7c135-d5d5-4efa-920d-3cc75b72f766.jpg)

Primeramente, tal y como se observa en el diagrama de bloques, el parametro de entrada del subsistema va a ser los switches en la tarjeta Nexys, y se traduciran en codigo binario, para esta lectura nos basaremos en la "Tabla 1: Código de Gray de 4 bits a implementar".



### • Subsistema de despliegue de código ingresado traducido a formato binario en luces LED

El subsistema toma los datos ya convertidos a código binario en el subsistema anterior, y los desplegara en 4 luces LED

#### Diagrama de Bloques:

![leds](https://user-images.githubusercontent.com/110042626/194828957-4c45f1c9-35b4-42e5-98ef-dcb4db6aea9e.jpg)

AL igual que con el subsistema anterior en el diagrama de bloques, el parametro de entrada del subsistema va a ser los switches en la tarjeta Nexys, y se traduciran en codigo binario, para esta lectura nos basaremos en la "Tabla 1: Código de Gray de 4 bits a implementar", donde el resultado se vera representado en la tarjeta por medio de cuatro luces LED, que representaran su respectivo codigo binario.



### • Subsistema de despliegue de código decodificado en display de 7 segmentos

Por ultimo, el subsistema vuelve a tomar los 4 conmutadores del código de Gray, transformados a código binario representados con LEDs, para representarlo finalmente en el display de 7 segmentos.

#### Diagrama de Bloques:

![Diseño Diagramas3 0-Página-7 drawio (2)](https://user-images.githubusercontent.com/110042626/194853222-93b2d5bf-0b82-420c-bc9b-3476d78473d8.png)

AL igual que con el subsistema anterior en el diagrama de bloques, el parametro de entrada del subsistema va a ser los switches en la tarjeta Nexys, y se traduciran en codigo binario, para esta lectura nos basaremos en la "Tabla 1: Código de Gray de 4 bits a implementar", donde el resultado se vera representado en la tarjeta por medio de cuatro luces LED, que representaran su respectivo codigo binario. Toma valor representadao en codigo binario, mostrado a traves de las cuatro luces LED; este valor lo convierte en decimal, luego en base a sus unidades o decimas, se representa desplegado en los dispositivos de 7 segmentos disponibles en la placa, de forma decimal.



### Diagrama de Bloques: Representacion VIVADO

![d5d8b3a0-5005-492a-93b9-d065536167dd](https://user-images.githubusercontent.com/110042626/194796472-c744d1e3-d0a3-4859-8be5-923160706dde.jpg)

##  Ejemplo y análisis de una simulación

Primeramente, como ejemplo, escogimos un Código Gray de 4 bits para poner a prueba los subsistemas. Para este caso se utilizó el ejemplo '0100' en código de gray, para ingresarlo utilizamos cuatro conmutadores, los cuatro switches, y los activamos en base a '0'=Switch abajo '1'=Switch arriba. Una vez ingresados el código se hace uso del primer subsistema para convertir su valor en binario; seguidamente del segundo subsistema que buscara representar este código binario, previamente obtenido, por medio de luces LED, para este ejemplo obtendriamos '0111' ('0'=LED apagada '1'=LED encendida).

#### Representacion binario en LED:

![5d03217d-df31-4332-a1d5-ef1776590c27](https://user-images.githubusercontent.com/110042626/194809613-14947096-0fa4-4260-b75e-d29d243bbb61.jpg)

Seguidamente, para la realización del último subsistema, se toman los datos en binario que ya tenemos para trabajarlo de forma decimal. A partir del valor del número en binario, representado por las LED, se define su valor decimal en el display de 7 segmentos; por medio del número obtenemos 2 valores, el ánodo es la parte positiva del LED dentro del panel y los cátodos la cantidad de paneles a utilizar, dependiendo de la base del número. Para el ejemplo se está utilizando ('0111'='7'), solo se utiliza el primer panel 'bo', debió a que el número del ejemplo es una sola unidad, y se encienden las led dentro del panel que representan el número.

#### Representacion decimal display de 7 segmento:

![322405df-aea4-49c4-b77d-aa7bd82c38ca](https://user-images.githubusercontent.com/110042626/194809417-47fe98f5-c9a1-4fab-9753-68fc0cdadd72.jpg)

#### Análisis de una simulación:

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!
!
!
!
!
!
!
!
!
!
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



##  Consumo de recursos en la FPGA y del consumo de potencia reportado por Vivado


![194800086-dc826b6d-9e3b-415b-bf05-c1fb8362120c](https://user-images.githubusercontent.com/110042626/194830660-d02e6981-6ced-489a-84e4-bacd73d0cf8a.jpg)



##  Reporte de velocidades máximas de reloj posibles


![bd213152-ad7a-4fda-9e24-2e82d0307d07](https://user-images.githubusercontent.com/110042626/194801235-36d773a5-4554-4667-8dd1-29996cbbc452.jpg)

Como se puede observar en la imagen anterior, específicamente en el apartado de Setup, se puede ver que la velocidad máxima del reloj posible corresponde a aproximadamente 6 ns, lo cual equivale a 167 Mhz.



##  Principales problemas hallados durante el trabajo y de las soluciones aplicadas

•	Instalar Programas Vivado

En la instalación del programa Vivado 2018.3 existieron varias dificultades a la hora de descargarlo, debido a que no  dejaba instalarlo de la manera correcta, por lo que se decidio acudir a la ayuda del Prof. Kaleb Alfaro Badilla, el cual me proporcionó el link de instalación del programa. La ayuda facilito el proceso de instalacion, sin embargo, nuevamente se presentaron dificultades al momento de la validación de la cuenta, sin embargo, esto pudo ser solucionado al usar el correo institucional, en lugar del personal.

•	Generar las pruebas de banco o testbenches necesarios

Dentro de las dificultades al realizar las "Simulaciones RTL", al principio no se estaba definiendo el testbench como top en la aplicación del vivado, así que, al realizar la simulación, esta misma no ejecutaba la simulación del testbench, por lo cual, a la hora de simularla aparecía en términos de impedancias. Al momento de cambiarlo, se pudieron realizar las pruebas con éxito dentro del plazo establecido.


