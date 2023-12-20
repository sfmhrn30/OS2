echo "read number:"
read n
echo "no of digits:"
read pow
t=$n
sum=0
while [ $n -gt 0 ]
do
	rem=$((n%10))
	sum=$((sum+rem**pow))
	n=$((n/10))
done
if [ $t -eq $sum ]
then
	echo "Armstrog"
else
	echo "not armstrong"
fi


