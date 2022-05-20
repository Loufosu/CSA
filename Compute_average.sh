#! /bin/bash
#https://github.com/Loufosu/CSA.git
#script to compute the average given N integers by a user, correct to three decimal places.

echo "Enter Size (N):"
read N


x=1 #initialize x
sum=0 #initialize sum

echo "Enter Numbers:"
while [ $x -le $N ]
do
	read num
	sum=$((sum + num))
	x=$((x + 1))
done
average=$(echo $sum / $N | bc -l) 

printf '%0.3f' $average 




