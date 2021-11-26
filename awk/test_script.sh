#!/bin/bash
echo "필드값에 임의 문자열을 같이 출력"
awk '{print "no :" $1, "username : " $2}' ./test_file.txt

echo ""

echo "test1인 필드를 찾고 그때의 id 값"
awk '/test1/ {print "test_id : "  $1 }' ./test_file.txt

echo ""

echo "test인 필드와 동시에 4번째 변수가 40보다 같거나 큰 레코드들 사이에서 그때의 id값"
awk '/test/ && $4 >=40 {print "test_id : "  $1 }' ./test_file.txt


echo ""

echo "for loop 예제 (NF는 현재 레코드의 필드 갯수를 의미) 여러 필드 더하기 "
awk '{for (i=3; i<=NF ;i++) total += $i}; END  {print "TOTAL : "  total }' ./test_file.txt

echo ""

echo "필드 구분 문자 지정 (F 옵션) 기본값은 space"
awk -F ' ' '{print $1}' ./test_file.txt

echo ""

echo "실행 결과 레코드 정렬 (sort r옵션은 오름차순), 기본은 내림차순 (3번째 파라미터 오름차순 후, 1번째 파라미터 오름차순"
awk '{print $3 " " $1}' ./test_file.txt| sort

