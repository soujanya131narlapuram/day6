#Extend the Flip Coin problem till either Heads or Tails wins 11 times.


ct=0
ch=0

while [ 1 -eq 1 ]
do 
	randomCheck=$(( RANDOM%2 ))
	if (( $randomCheck == 0 ))
	then
		echo 'T'
		ct=$(( $ct + 1 ))
	else
		echo 'H'
		ch=$(( $ch + 1 ))
	fi
	
	if [ $ct -eq 11 ]
	then
		echo 'Tails reached 11 times'
		break
	fi
	
	if [ $ch -eq 11 ]
	then
		echo 'Heads reached 11 times'
		break
	fi
done