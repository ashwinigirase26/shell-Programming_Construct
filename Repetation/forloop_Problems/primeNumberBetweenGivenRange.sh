#Extend the program to take a range of number as input and output the Prime Numbers in that range.

#!/bin/bash -x
echo "enter the starting range";
read start;
echo "entr the ending range";
read end;
for ((j=$start;j<=$end;j++))
do
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
echo given number is primenumber$j
else
echo notprime$j
fi
done
