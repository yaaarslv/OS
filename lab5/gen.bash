#!/bin/bash
K = $1
N = $2
for ((i = 0; i < $1; i++))
do
	sleep 1
	./newmem.bash $2 &
done