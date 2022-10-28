#Write a program that takes a input and determines if the number is a prime.
#!/bin/bash -x

echo "enter the number"
read q
count=0


prime(){ 
	limit=$(( $1 / 2 ))
	if (( $1 % 2 == 0 ))
	then 
		echo "Given number is not a prime"
		count=$(( $count + 1 ))
		exit
	fi

	for ((i=2; i<=$limit; i++))
	do 
	  if (( $1 % $i == 0))
	  then
		echo "Given number is not a prime" 
		count=$(( $count + 1 ))
		break
	  fi
	done
	if (( $count == 0 ))
	then
		echo 'Given number is prime'
	fi
  return
}
prime $q

n=$q
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
	echo "Given number is a pallindrome"
	echo 'pallindrome is sent for prime check'
	prime $rev
else
	echo "Given Number is not a pallindrome"
fi

