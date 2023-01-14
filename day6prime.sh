read -p "Enter the number: " num
count=0
for(( i=2 ; i<=$num/2;i++))
do
if [ $(($num%$i)) -eq 0 ]
then
coutn=$(($count+1))
fi
done
if [ $count -gt 0 ]
then
echo "$number is not prime"
else
echo "$number is prime"
fi

