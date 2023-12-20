echo "enter the number:"
read n
sum=0
while [ $n -gt 0 ]
do
        rem=$((n%10))
        sum=$((sum*10+rem))
        n=$((n/10))
done
echo "palindrome is:"
echo $sum
