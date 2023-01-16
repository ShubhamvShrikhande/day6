function primeNumber(){
for((i=2;i<=$no/2;i++))
do
       if [ $((no%i)) -eq 0 ]
       then
       echo "$no is not a prime number"
       exit
       fi
done
    echo "$no is a prime number"
}

function palindromeNumber(){
temp=$no
rev=""
rem=0
while [ $no -gt 0 ]
do
     rem=$(( $no % 10 ));
     rev=$( echo ${rev}${rem} );
     no=$(( $no / 10 ));
done
if [ $temp -eq $rev ]
then
      echo "$temp is palindrome"
else
      echo "$temp is not palindrome"
fi
}

echo "Enter a number "
read no

primeNumber $no
palindromeNumber $no
