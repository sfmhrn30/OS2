echo "Enter the binary number:"
read n

d=0
p=0
while [ $n -gt 0 ]
do
        rem=$((n%10))
        d=$((d+rem*(5**p)))
        p=$((p+1))
        n=$((n/10))
done
echo $d
