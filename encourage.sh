#!/bin/sh
clear

FILES=./images/*

IFS=''
for filename in $FILES
do
  while read -r CHAR_IN; do
     echo "$CHAR_IN"
  done < $filename
  export PS1=""
  sleep 3600 #Time in seconds between switching images
done
echo "You've been at work for 8 hours!"
export PS1="$"
