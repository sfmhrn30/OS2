echo "enter the starting number:"
read n1
echo "enter the ending number:"
read n2
for ((j=n1;j<=n2;j++)){
	count=0
for ((i=1 ;i<=n2;i++)) {
        if [ $((j%i)) -eq 0 ]
        then
                count=$((count+1))
        else
                count=$((count+0))
        fi
}
if [ $count -le 2 ]
then
        echo $j
fi
}

