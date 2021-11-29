#!/bin/bash

echo "원본"
cat test.txt

echo "substitute (대체) bad -> change_goodgood"
sed 's/bad/change_goodgood/' test.txt

echo "공백라인 삭제 "
sed '/^$/d' test.txt

echo "what?이 들어간 line만 프린트"
sed -n '/what?/p' test.txt


echo "각 라인의 마지막 3개의 문자 삭제"
sed 's/...$//' test.txt

echo "각 라인의 첫번째 3개의 문자 삭제"
sed 's/...//' test.txt



