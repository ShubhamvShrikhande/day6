read -p "enter a number between 1 to 100: " n
low=1
high=100
mid=0
while(( $mid!=$n ))
do
mid=$((($low+$high)/2))
read -p " if number greater than $mid then press 1: if number is less press 0 " c
if (( $c==1 ))
then
low=$(($mid+1))
elif (( $c==0 ))
then
high=$(($mid-1))
fi
done
echo $mid
