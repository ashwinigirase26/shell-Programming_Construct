#Write a program that takes a input from user that determines if the number is a prime or not. 

#!/bin/bash -x
echo "enter the number:"
read j;
count=0
for ((i=2;i<$j;i++))
do
if [ `expr $j % $i` -eq 0 ]
then
count=`expr $count + 1 `
fi
done
if [ $count -eq 0 ]
then 
echo primenumber$j
else
echo notprime$j
fi
