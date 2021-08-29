#!/bin/bash

array=("hello" "test" "array" "world")

array[4]="variable"

echo "hello world 출력 : ${array[0]} ${array[3]}"
echo "배열 전체 출력 : ${array[@]}"
echo "배열 전체 갯수 출력 : ${#array[@]}"

printf "배열 출력 : %s\n" ${array[@]}

# 5번째 원소 지우기
unset array[4] 
echo "배열 전체 출력 : ${array[@]}"

