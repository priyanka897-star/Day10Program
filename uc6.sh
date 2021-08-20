echo "Enter value of a:"
read a
echo "Enter value of b:"
read b
echo "Enter value of c:"
read c
result1=$(( ($a+$b)*$c ))
result2=$(( ($a*$b)+$c ))
result3=$(( $c+($a/$b) ))
result4=$(( ($a%$b)+$c ))
declare -A result
result[compute1]="$result1"
result[compute2]="$result2"
result[compute3]="$result3"
result[compute4]="$result4"
echo "All compute result" ${result[@]}




