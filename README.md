# Control-de-Brillo-con-Xrandr-para-distribuciones-Linux-hecho-con-Bash
este es un programa que usa los scripts de control de brillo de xrandr, en un estilo de selección para que sea mas fácil.

este programa usa principalmente el comando XRANDR, que sirve para controlar parametros del monitor de tu computador, en este caso se usa
para modificar el nivel de brillo de pantalla que hay. basicamente para que sea mas comodo y no haga falta escribir tanto codigo, hice el
programa que con la seleccion del mismo usuario, ejecuta el comando con la cantidad de brillo que nosotros queramos.

.Al nosotros ejecutarlo con ./controlbrillojm.sh en el directorio que esta, aparece la siguiente interfaz:

![cap1](https://user-images.githubusercontent.com/111131531/204118775-ef03a2a2-2214-47bb-b50e-7f8c59a9db25.png)

.Al seleccionar cualquiera de los numeros, veremos que la luz de pantalla, subira o bajara, dependiendo tu opcion:

![cap2](https://user-images.githubusercontent.com/111131531/204118826-ab4c872e-0c32-42d5-8560-b262c450d31f.png)

Asi de sencillo es todo este programa, de todas formas esta solo es una version inicial de este programita, añadire una forma para que en caso
de que nosotros tengamos una pantalla diferente en el programa podamos usarlo automaticamente.

de todas formas, lo hice sencillo y hasta se puede modificar por ti mismo en el archivo.

Muchas Gracias, Jeff McWill

-------------------------------------------------------

#NUEVA ACTUALIZACION DEL CODIGO 27/11/22

Hice una pequeña modificacion para que en caso de que el monitor sea diferente al codigo default que tiene el programa, ahora uno sin necesidad de 
tocar el codigo, lo npueda hacer manualmente. muestro.

.Elegimos la nueva opcion 6 (CAMBIAR TIPO DE MONITOR):

![cam1](https://user-images.githubusercontent.com/111131531/204149117-7f868086-5c38-4ff6-9bc5-1ef4c44f2192.png)

.Una vez elegido te llevara a un menu que dice "CAMBIO" de ahi te explica lo que debes hacer:

.![cam2](https://user-images.githubusercontent.com/111131531/204149189-a3301b71-42db-4568-a588-0aa71e7e4bbc.png)

basicamente esto sirve para que el usuario en caso de que no funcione el programa por que la opcion default en que esta escrito no es compatible con su
monitor, agregue este script que hace que el usuario lo modifique de forma manual, sin necesidad de modificar el codigo.

![cam3](https://user-images.githubusercontent.com/111131531/204149491-87573bf6-3bc4-4927-979e-98ba3ab4b61c.png)

Termina de agregar el tipo de monitor, te enviara a un menu "similar" al de siempre y el programa proceguira con normalidad.

------------------------------------
Muchas gracias, Jeff McWill 27/11/22

