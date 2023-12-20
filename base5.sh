echo "enter the number:"
read n
temp=$n
sum=''
while [ $n -gt 0 ];
do
        rem=$((n%5))
        sum=$rem$sum
        n=$((n/5))
done
echo $sum

