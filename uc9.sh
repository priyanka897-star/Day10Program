echo "Enter number 1"
read a
echo "Enter number 2"
read b
echo "Enter number 3"
read c

num1=$(($a+$b*$c))
num2=$(($a*$b+$c))
num3=$(($c+$a/$b))
num4=$(($a%$b+$c))

echo $num1
echo $num2
echo $num3
echo $num4

declare -A result
result[1]="$num1"
result[2]="$num2"
result[3]="$num3"
result[4]="$num4"

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

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}


