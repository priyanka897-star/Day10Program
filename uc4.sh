echo "Enter value of a:"
read a
echo "Enter value of b:"
read b
echo "Enter value of c:"
read c

result=$(( $c+($a/$b) ))
echo "c+a*/b="$result

