#Extend the Flip Coin problem till either Heads or Tails wins 11 times.


amount=100
bet=10

while [ 1 -eq 1 ]
do 
	randomCheck=$(( RANDOM%2 ))
	if (( $randomCheck == 0 ))
	then
		echo 'W'
		amount=$(( $amount + 10 ))
	else
		echo 'L'
		amount=$(( $amount - 10 ))
	fi
	
	if [ $amount -ge 200 ]
	then
		echo 'Amount has become 200'
		break
	fi
	
	if [ $amount -le 0 ]
	then
		echo 'Amount has reached 0'
		break
	fi
done