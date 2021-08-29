#!/bin/bash

array=('hello1' 'hello2' 'hello3')
for i in 1 2 3; do
	echo $i
done

# @는 전체를 의미하기 때문에 반드시 저렇게 써줘야 한다
for value in ${array[@]}
do
	echo $value
done
