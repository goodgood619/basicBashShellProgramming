#!/bin/bash

arr=$(cat ./test_split.txt)

echo ${arr}

array=($arr)

#split space not working
# IFS=' ' read -a array <<< "$arr"

for index in "${!array[@]}"
do
	echo "$index ${array[index]}"
done
