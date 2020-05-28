#! /bin/bash -x
counter=0;

declare -A Records;
read -p "Enter First Number: " num1;
read -p "Enter Second Number: " num2;
read -p "Enter Third Number: " num3;
comput=$((num1%num2));
ans=$((comput+num3));
Records[((counter++))]=$comput;
Records[((counter++))]=$ans;
echo "a%b+c="$ans;
echo ${Records[@]};
