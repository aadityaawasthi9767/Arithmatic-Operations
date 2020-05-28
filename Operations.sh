#! /bin/bash -x
counter=0;
counter2=0;

declare -A Records;
declare -a arrRecords;
read -p "Enter First Number: " num1;
read -p "Enter Second Number: " num2;
read -p "Enter Third Number: " num3;
comput=$((num1%num2));
ans=$((comput+num3));
Records[((0))]=$comput;
Records[((1))]=$ans;
for((i=0;i<=${#Records[@]};i++))
do
	arrRecords[((counter++))]=$Records[i]
done
echo "Elements of Array: " ${arrRecords[@]};
echo "Elements of Dictionary: " ${Records[@]};
