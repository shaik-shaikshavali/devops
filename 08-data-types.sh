#!/bin/bash

NUM1=100
NUM2=sivakumar

Sum=$(($NUM1+$NUM2))

echo "Sum is: $Sum"

# Array
Fruits=("Apple" "Banana" "Pomo")

echo "Fruits are: ${Fruits[@]}"
echo "First Fruit is: ${Fruits[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"