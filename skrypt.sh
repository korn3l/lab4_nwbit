#!/bin/bash
function menu(){
	x=$1
	case "$1" in
	("--date"|"-d") echo "Dzisiejsza data: $(date +%d.%m.%Y)";;
	("--logs"|"-l")
		for i in $(seq 1 $2)
			do
				echo "Plik stworzony przez skrypt.sh --logs" > log${i}.txt
				echo "log${i}.txt" >> log${i}.txt
				echo ${i} >> log${i}.txt
				echo "Dzisiejsza data: $(date +%d.%m.%Y)" >> log${i}.txt
			done;;
	("--help"|"-h")
		echo "--date lub -d -> wyswietli dzisiejsza date"
		echo "--logs lub -l <liczba> -> utworzy podana ilosc plikow log"
		echo "--init -> klonuje cale repozytorium"
		echo "--error lub -e -> utworzy podana ilosc plikow error";;
	("--init")
		git clone https://github.com/korn3l/lab4_nwbit
		npath =$(pwd)
		echo "export PATH=\$PATH:$npath" >> ~/.bashrc;;
	("--error"|"-e")
		for i in ($seq 1 $2)
			do
				echo "Plik stworozny przez skrypt.sh --eroor" > error${i}.txt
				echo "error${i}.txt" >> error${i}.txt
				echo ${i} >> log${i}.txt
				echo "Data: $(+%d.%m.%Y)" >> log${i}.txt
			done;;
	esac
}
menu "$1" "$2"
