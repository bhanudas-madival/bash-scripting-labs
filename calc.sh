#!/bin/bash 

echo "Number1: $1"

echo "operator: $2" 

echo "Number2: $3" 

if [ "$2" = "+" ] 
then 
	echo "Addition is: $(( $1 + $3 ))"

elif [ "$2" = "-" ]
then 
	echo "Substraction is: $(( $1 - $3 ))"

elif [ "$2" = "*" ] 
then 
	echo "Multiplication is: $(( $1 "*" $3 ))"

elif [ "$2" = "/" ] 
then 
	echo "Division is: $(( $1 / $3 ))"

else 
	echo "$2 is not valid operator"
fi
