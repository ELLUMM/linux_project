#!/bin/bash

source ./data.sh

echo -n "소모한 칼로리 입력: "
read BURN

TOTAL=$((TOTAL - BURN))

if [ $TOTAL -lt 0 ]; then
    TOTAL=0
fi

cat > data.sh <<EOF
#!/bin/bash
BREAKFAST=$BREAKFAST
LUNCH=$LUNCH
DINNER=$DINNER
TOTAL=$TOTAL
EOF

echo "운동 반영 완료! 현재 총 칼로리: $TOTAL kcal"
