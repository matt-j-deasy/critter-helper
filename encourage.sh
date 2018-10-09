#!/bin/sh

clear

#Animal image corresponds to hours of the day
#8-aardvark 9- 10- 11- 12- 1- 2- 3- 4- 5-Sad Face

HOUR=$(date +%H)
DIR=./images/
IFS=''

time_to_animal(){

	START=$HOUR

	while read -r CHAR_IN; do
     	echo "$CHAR_IN"
  	done < $DIR/$1
  	
  	while [ $START -eq $HOUR ]; do
  		sleep 60
  	done
}

case $HOUR in

	8) time_to_animal coffee
	;;
	9) time_to_animal bat
	;;
	10) time_to_animal bear
	;;
	11) time_to_animal beaver
	;;
	12) time_to_animal camel
	;;
	13) time_to_animal cow
	;;
	14) time_to_animal donkey
	;;
	15) time_to_animal horse
	;;
	16) time_to_animal aardvark
	;;
	17) time_to_animal aardvark
	;;
	*) time_to_animal sadface
	;;
esac

export PS1="$"
