#! /bin/bash -x
read -p "Enter First Number: " num1;
read -p "Enter Second Number: " num2;
read -p "Enter Third Number: " num3;
comput=$((num1%num2));
ans=$((comput+num3));
echo "a%b+c="$ans;
