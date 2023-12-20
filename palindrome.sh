echo "enter the number:"
read n
sum=0
t=$n
while [ $n -gt 0 ]
do 
	rem=$((n%10))
	sum=$((sum*10+rem))
	n=$((n/10))
done
if [ $sum -eq $t ]
then
	echo "palindrome"
else
	echo "not palindrome"
fi

