#!/bin/bash
function menu(){
	x=$1
	case "$1" in
	("--date") echo "Dzisiejsza data: $(date +%d.%m.%Y)";;
	("--logs")
		for i in $(seq 1 $2)
			do
				echo "Plik stworzony przez skrypt.sh --logs" > log${i}.txt
				echo "log${i}.txt" >> log${i}.txt
				echo ${i} >> log${i}.txt
				echo "Dzisiejsza data: $(date +%d.%m.%Y)" >> log${i}.txt
			done;;
	("--help")
		echo "--date -> wyswietli dzisiejsza date"
		echo "--logs <liczba> -> utworzy podana ilosc plikow log"
	esac
}
menu "$1" "$2"
