#!/bin/bash

NAME="NAGESH"
NUMBER=10
NUM2=20

SUM=$(($NUM2+$NUMBER))

echo $SUM

SUM2=$(($NUM2+$NUMBER+$NAME))

echo " another sum $SUM2"

#ARRAY

LEADERS=("MODU", "GODU", "JODU")

echo "print all ${LEADERS[@]}"
echo "First Leader: ${LEADERS[0]}"
echo "First Leader: ${LEADERS[10]}" 