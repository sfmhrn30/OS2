echo "enter the number:"
read n
count=0
for ((i=2 ;i<n;i++)) {
	if [ $((n%i)) -eq 0 ]
	then
		count=$((count+1))
	else
		count=$((count+0))
	fi
}
if [ $count -gt 0 ]
then
	echo "not prime "
else
	echo "prime"
fi



