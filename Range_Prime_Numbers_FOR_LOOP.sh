#Extend the program to take a range of number as input and output the Prime
#Numbers in that range.

echo "enter the number"
read n

if [ $n -ge 1 ]
then
	echo "1 is a prime number"
fi
if [ $n -ge 2 ]
then
	echo "2 is a prime number"
fi

for (( i=3; i<=$n; i++))
do
	count=0
	q=$i
	limit=$(( $q / 2 ))
	
	if (( $q % 2 == 0 ))
	then 
		echo "$q is not a prime"
		count=$(( $count + 1 ))
		continue
	fi

	for ((j=2; j<=$limit; j++))
	do 
	  if (( $q % $j == 0))
	  then
		echo "$q is not a prime" 
		count=$(( $count + 1 ))
		break
	  fi
	done
	if (( $count == 0 ))
	then
		echo "$q is a prime Number"
	fi
done
