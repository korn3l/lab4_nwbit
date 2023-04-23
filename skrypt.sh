#!/bin/bash
function menu(){
	x=$1
	case "$1" in
	("--date") echo "Dzisiejsza data: $(date +%d.%m.%Y)"
	esac
}
menu "$1"
