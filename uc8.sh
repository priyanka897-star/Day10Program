echo "Enter number a"
read a
echo "Enter number b"
read b
echo "Enter number c"
read c

number1=$(($a+$b*$c))
number2=$(($a*$b+$c))
number3=$(($c+$a/$b))
number4=$(($a%$b+$c))

echo $number1
echo $number2
echo $number3
echo $number4

declare -A result
result[1]="$number1"
result[2]="$number2"
result[3]="$number3"
result[4]="$number4"

echo ${result[@]}

arr[0]=${result[1]}
arr[1]=${result[2]}
arr[2]=${result[3]}
arr[3]=${result[4]}

echo ${arr[*]}

for ((i = 0; i<4; i++))
do
      
    for((j = 0; j<4-i-1; j++))
    do
      
        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]}
