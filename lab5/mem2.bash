#!/bin/bash
rm report2.log
touch report2.log
array=()
let cnt=0
while [[ true ]]
do
	array+=(1 2 3 4 5 6 7 8 9 10)
	((cnt+=1))
	if [[ $cnt%100000 -eq 0 ]]
	then
		echo ${#array[*]} >> report2.log
	fi
done