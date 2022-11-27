#!/bin/bash

#programa de control de brillo con xrandr para cualquier distribucion linux.
#aunque este lo use para Debian 11 
#Hecho por Jeff McWill.

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

function brillo(){
#tipo de monitor en el sistema
	xrandr --prop | grep " connected"
}

function cuanto(){
	xrandr --prop --verbose | 
	grep -A10 " connected" | 
	grep "Brightness"
}
function main(){
	echo "---------------------------------------"
	echo "- Control de Brillo con XRANDR By J.M -"
	echo "---------------------------------------"
	echo "Tu tipo de monitor es: "
	brillo
	echo "-------------------------"
	echo "Tu cantidad de brillo es: "
	cuanto
	echo "-------------------------"
	echo "1) 100% de brillo."
	echo "2) 70% de brillo."
	echo "3) 50% de brillo."
	echo "4) 30% de brillo."
	echo "-------------------------"
	echo "5) Salir."
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
		4)echo "Cerrando script."
			exit
			;;
	esac
}
main
