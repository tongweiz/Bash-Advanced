#!/bin/bash

func1 ()
{
  echo This is a function.
}

declare -f        # Lists the function above.
echo

declare -i var1   # var1 is an integer.
var1=2367
echo "var1 declared as $var1"
var1=var1+1       # Integer declaration eliminates the need for 'let'.
echo "var1 incremented by 1 is $var1."
echo "Attempting to change var1 to floating point value, 2367.1."
var1=2367.1       # Results in error message, with no change to variable.
echo "var1 is still $var1"

echo

declare -r var2=13.36         # 'declare' permits setting a variable property
                              #+ and simultaneously assigning it a value.
echo "var2 declared as $var2" # Attempt to change readonly variable.
var2=13.37                    # Generates error message, and exit from script.

echo "var2 is still $var2"    # This line will not execute.

declare | grep HOME
HOME=/home/bozo

zzy=68
declare | grep zzy
zzy=68

# Initilize array
Colors=([0]="purple" [1]="reddish-orange" [2]="light green")
echo ${Colors[@]}
purple reddish-orange light green
declare | grep Colors
Colors=([0]="purple" [1]="reddish-orange" [2]="light green")
