#Write a program that computes a factorial of a number taken as input.
#5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

echo 'enter the number:'
read n
s=1
for (( i=n; i>=1; i-- ))
do 
    s=$(( $i * $s ))
done
echo 'the result is'
echo $s
