#! /bin/bash -x
counter=0;
counter2=0;

declare -A Records;

read -p "Enter First Number: " num1;
read -p "Enter Second Number: " num2;
read -p "Enter Third Number: " num3;

sum=$((num1+num2+num3));
Records[0]=$sum;

sub=$((num1-num2-num3));
Records[((1))]=$sub;

mult=$((num1*num2*num3));
Records[((2))]=$mult;

div=$((num1/num2/num3));
Records[((3))]=$div;


for(( i=0 ; i<=2 ; i++ ))
do
	for(( j=i+1 ; j<=((3)) ; j++ ))
	do
		if [ ${Records[ ((j)) ]} -le ${Records[ ((i)) ]} ]
		then
			temp=$Records[i];
			Records[i]=$Records[j];
			Records[j]=$temp;
		fi
	done
done
echo "Elements of Array: " ${Records[@]};
