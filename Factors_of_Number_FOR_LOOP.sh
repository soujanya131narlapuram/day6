#Write a program to compute Factors of a number N using prime factorization method.
#Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
#O/P -> Print the prime factors of number N.


echo "enter the number"
read q

limit=$(( $q / 2 ))

for ((i=1; i<=$limit; i++))
do 
  if (( $q % $i == 0))
  then
	echo "$i is factor of $q" 
  fi
done
echo "$q is a factor $q"
