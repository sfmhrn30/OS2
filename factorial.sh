echo "enter the number :"
read n
if [ $n -eq 0 ]
then 
	echo "1"
else
	sum=1
	for ((i=n;i>0;i--)){
		sum=$((sum*i))
	}
	echo $sum
fi


