FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
    echo "heads"
fi
if [ $FLIP -eq 0 ]; then
    echo "tails"
fi

