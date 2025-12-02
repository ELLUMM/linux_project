#!/bin/bash

while true; do
    echo "===== 하루 칼로리 관리 ====="
    echo "1) 칼로리 기록 (아침/점심/저녁)"
    echo "2) 총 칼로리 출력"
    echo "3) 소모 칼로리 입력"
    echo "4) 칼로리 초기화"
    echo "5) 종료"
    echo -n "선택 >> "
    read CHOICE

    case $CHOICE in
        1) ./record.sh ;;
        2) ./show_total.sh ;;
        3) ./burn.sh ;;
        4) ./reset.sh ;;
        5) echo "프로그램 종료"; exit 0 ;;
        *) echo "잘못된 입력입니다." ;;
    esac

    echo ""
done
