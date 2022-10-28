#Write a program that takes a command-line argument n and prints a table of the
#powers of 2 that are less than or equal to 2^n.

echo "enter the number"
read n

i=0
power=1

while [ $i -le $n -a $power -le 256 ]
do
	power=$(( 2 ** $i ))
	echo "2 power $i = $power"
	i=$(( $i + 1 ))
done