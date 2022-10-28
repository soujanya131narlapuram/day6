#Write a program that takes a command-line argument n and prints the nth harmonic
#number. Harmonic Number is of the form


echo "enter the number"
read n

hm=0

for (( i=1; i<=$n; i++ ))
do
	temp=$(( 1 / $i ))
	hm=$(( $hm + $temp ))
	
done

echo "The Nth harmonic number is $hm"