#!/bin/bash

source ./data.sh               //data.sh로부터 기존 데이터 불러옴 

echo "어떤 식사인가요?"
echo "1) 아침"
echo "2) 점심"
echo "3) 저녁"
echo -n "선택 >> "
read MEAL

echo -n "칼로리를 입력하세요 >> "
read CAL

case $MEAL in
    1) BREAKFAST=$((BREAKFAST + CAL)) ;;
    2) LUNCH=$((LUNCH + CAL)) ;;
    3) DINNER=$((DINNER + CAL)) ;;
    *) echo "잘못된 선택입니다."; exit 1 ;;
esac

# 총합 갱신
TOTAL=$((BREAKFAST + LUNCH + DINNER))

# 변경된 값을 data.sh에 다시 저장
cat > data.sh <<EOF
#!/bin/bash
BREAKFAST=$BREAKFAST
LUNCH=$LUNCH
DINNER=$DINNER
TOTAL=$TOTAL
EOF

echo "기록 완료! 현재 총 칼로리: $TOTAL kcal"
