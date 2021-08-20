echo "Enter value of a:"
read a
echo "Enter value of b:"
read b
echo "Enter value of c:"
read c

result=$(( ($a+$b)*$c ))
echo "a+b*c="$result
