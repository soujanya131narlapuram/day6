echo "enter the number"
read n

temp=$n
rev=0

pallindrome(){ 
  while [ $temp -gt 0 ]
  do
	digit=$(($temp%10))
	temp=$(($temp/10))
	rev=$(( $digit + $rev*10 ))
  done
  echo "the reverse of given number is $rev"
  return
}
pallindrome

if [ $rev -eq $n ]
then
	echo "Given number is pallindrome"
else
	echo "Given Number is not a pallindrome"
fi
