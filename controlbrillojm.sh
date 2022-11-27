#!/bin/bash

#programa de control de brillo con xrandr para cualquier distribucion linux.
#aunque este lo use para Debian 11 
#Hecho por Jeff McWill.

#Nueva version  1.1*
#ahora permite que el usuario en caso de no tener la opcion default LVDS-1 (que era la que me daba en la pc que codifique esto)
#permita que uno pueda ponerlo manualmente sin necesidad de tener que modificar el codigo. 
#es una solucion sencilla y efectiva, si encuentro alguna forma de poder hacerlo aun mas automatico lo traere aqui, pero por ahora
#esta es la version definitiva del programa. Gracias.
#Jeff.

#menu para cambio en caso que el modo default no funcione.

function cambio(){
	echo "------------------"
	echo "-     cambio     -"
	echo "------------------"
	echo "Por default el programa tiene programado que los parametros "
	echo "de brillo sean para los monitores *LVDS-1*, si este programa "
	echo "detecta una pantalla diferente al momento de ejecutarse, este dara error. Si este es el"
	echo "caso, cambie el parametro aqui mismo."
	echo "dare un ejemplo de como saber que parametro poner para que funcione."
	echo "Ejemplo: "
	echo "--------------------------------------------------------------------------------------"
	echo ". . ."
	echo "| | |"
	echo "v v v (Lo demas se puede ignorar solo en este caso *eDP-1*)"
	echo "eDP-1 connected 1366x768+0+0 (normal left inverted right x axis y axis) 344mm x 194mm"
	echo "--------------------------------------------------------------------------------------"
	echo "tipo de monitor actual: "
	tipo
	echo "--------------------------------------------------------------------------------------"
	read -p "Dime el monitor: " nuevapantalla

	echo "Ok continuemos al programa..."

	echo "---------------------------------------"
        echo "- Control de Brillo con XRANDR By J.M -"
        echo "---------------------------------------"
        echo "Tu tipo de monitor es: "
        echo "Otro.."
        echo "-------------------------"
        echo "Tu cantidad de brillo es: "
        cuanto
        echo "-------------------------"
        echo "1) 100% de brillo."
        echo "2) 70% de brillo."
        echo "3) 50% de brillo."
        echo "4) 30% de brillo."
        echo "5) 10% de brillo."
        echo "-------------------------"
        echo "6) Salir."
        echo "-------------------------"

        read -p "Cuanto brillo?: " eleccion

	case $eleccion in
                1)echo "Ok 100% de brillo."
                        xrandr --output $nuevapantalla --brightness 1.0
                        ;;
                2)echo "Ok 70% de brillo."
                        xrandr --output $nuevapantalla --brightness 0.7
                        ;;
                3)echo "Ok 50% de brillo."
			xrandr --output $nuevapantalla --brightness 0.5
                        ;;
                4)echo "Ok 30% de brillo."
			xrandr --output $nuevapantalla --brightness 0.3
                        ;;
                5)echo "Ok 10% de brillo."
                        xrandr --output $nuevapantalla --brightness 0.1
                        ;;
                6)echo "Saliendo..."
                        exit
                        ;;
        esac
}

# controles de brillo opciones default

function diez(){
       	xrandr --output LVDS-1 --brightness 0.1
}

function treinta(){
	xrandr --output LVDS-1 --brightness 0.3
}

function cincuenta(){
	xrandr --output LVDS-1 --brightness 0.5
}

function normal(){
	xrandr --output LVDS-1 --brightness 1.0
}

function setenta(){
	xrandr --output LVDS-1 --brightness 0.7
}

function tipo(){
#tipo de monitor en el sistema
	xrandr --prop | grep " connected"
}

function cuanto(){
	xrandr --prop --verbose | grep -A10 " connected" | 
	grep "Brightness"
}

#menu default de selector de brillo

function main(){
	echo "---------------------------------------"
	echo "- Control de Brillo con XRANDR By J.M -"
	echo "---------------------------------------"
	echo "Tu tipo de monitor es: "
	tipo
	echo "-------------------------"
	echo "Tu cantidad de brillo es: "
	cuanto
	echo "-------------------------"
	echo "1) 100% de brillo."
	echo "2) 70% de brillo."
	echo "3) 50% de brillo."
	echo "4) 30% de brillo."
	echo "5) 10% de brillo."
	echo "-------------------------"
	echo "6) Cambiar tipo de monitor."
	echo "7) Salir."
	echo "-------------------------"

	read -p "Cuanto brillo?: " eleccion

	case $eleccion in
		1)echo "Ok 100% de brillo."
			normal
			;;
		2)echo "Ok 70% de brillo."
			setenta
			;;
		3)echo "Ok 50% de brillo."
			cincuenta
			;;
		4)echo "Ok 30% de brillo."
			treinta
			;;
		5)echo "Ok 10% de brillo."
			diez
			;;
		6)echo "OK vamos a cambiarlo..."
			cambio
			;;
		7)echo "Cerrando script."
			exit
			;;
	esac
}
main
