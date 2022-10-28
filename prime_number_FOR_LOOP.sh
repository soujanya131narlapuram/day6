#Write a program that takes a input and determines if the number is a prime.
#!/bin/bash -x

echo "enter the number"
read q
count=0

limit=$(( $q / 2 ))


if (( $q % 2 == 0 ))
then 
	echo "Given number is not a prime"
	count=$(( $count + 1 ))
	exit
fi

for ((i=2; i<=$limit; i++))
do 
  if (( $q % $i == 0))
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

