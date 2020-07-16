#Write a function to check if the two numbers are Palindromes

#!/bin/bash -x
a=$num;
rem=0;
result=0;
echo "enter the number";
read num;
while [ $num -gt 0 ]
do
rem=$(( $num % 10 ));
num=$(( $num / 10 ));
result=$((( $result * 10 ) + $rem ));
done
if [ $a -eq $result ]
then
echo "$a is palindrome number";
else
echo "$a is not palindrome number"
fi
