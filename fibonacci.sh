echo "enter no of terms"
read n
n1=0
n2=1
echo $n1
echo $n2
for((i=0;i<n-2;i++)){
	sum=$((n1+n2))
	echo $sum
	n1=$n2
	n2=$sum
}

        	
