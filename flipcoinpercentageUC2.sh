
headcounter=0
tailcounter=0
while [[ $headcounter -le 50  && $tailcounter -le 50 ]]
do
        if [ $(( $RANDOM%2 )) -eq 1 ]
        then
                headcounter=$(( $headcounter+1 ))
                 percenthead=$(( ($headcounter/10)*100 ))   
        else
                tailcounter=$(( $tailcounter+1 ))
                 percenttail=$(( 100-$persenhead ))

        fi
done
echo "Head" $headcounter
echo "Tail" $tailcounter
echo "Head counter Percent" $percenthead
echo "Head counter Percent" $percenttail
declare -A coins
coins[head]=$headcounter
coins[tail]=$tailcounter
echo ${coins[head]}
echo ${coins[tail]}
