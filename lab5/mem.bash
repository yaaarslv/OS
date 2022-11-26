#!/bin/bash
rm report.log
touch report.log
array=()
while [[ true ]]
do
	array+=(1 2 3 4 5 6 7 8 9 10)
	((cnt+=1))
	if [[ $cnt%100000 -eq 0 ]]
	then
		echo ${#array[*]} >> report.log
	fi
done