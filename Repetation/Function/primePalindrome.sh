#Take a number from user and check if the number is a Prime then show that its palindrome is also prime
#Check if the Palindrome number is also prime
#!/bin/bash -x
function prime()
{
count=0
for ((i=2;i<$num;i++))
do
if [ `expr $num % $i` -eq 0 ]
then
count=`expr $count + 1 `
fi
done
if [ $count -eq 0 ]
then 
echo "primenumber $num";
palindrome "$num"
else
echo "notprime $num";
fi
}

function palindrome()
{
a=$num;
rem=0;
result=0;
while [ $num -gt 0 ]
do
rem=$(( $num % 10 ));
num=$(( $num / 10 ));
result=$((( $result * 10 ) + $rem ));
done
if [ $a -eq $result ]
then
echo "$a is palindrome";
else
echo "$a is not palindrome"
fi
}
echo "enter the number=";
read num;
prime "$num";

