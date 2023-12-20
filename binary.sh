echo "enter the number:"
read n
temp=$n
sum=''
while [ $n -gt 0 ];
do
	rem=$((n%2))
	sum=$rem$sum
	n=$((n/2))
done
echo $sum


