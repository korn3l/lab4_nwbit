#!/bin/bash
function menu(){
	x=$1
	case "$1" in
	("--date") echo "Dzisiejsza data: $(date +%d.%m.%Y)";
	("--logs")
		for i in {1..100}
			do
				echo "Plik stworzony przez skrypt.sh --logs" > log${i}.txt
				echo "log${i}.txt" >> log${i}.txt
				echo ${i} >> log${i}.txt
				echo "Dzisiejsza data: $(date +%d.%m.%Y)" >> log${i}.txt
			done;
	esac
}
menu "$1"
