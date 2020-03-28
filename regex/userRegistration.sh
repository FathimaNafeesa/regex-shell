#!/bin/bash -x
shopt -s extglob
echo "Enter your First name"
read firstname
namepattern="^[A-Z][a-z]{2,}$"
if [[ firstname =~ $namepattern ]]
then
	echo "Valid"
else
	echo "Invalid"
fi

