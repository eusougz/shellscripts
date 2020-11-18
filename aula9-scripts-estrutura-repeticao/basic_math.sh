#!/bin/bash

trap '' 2 20

num1=$(("$RANDOM" % 999 + 1))
num2=$(("$RANDOM" % 999 + 1))

op_code=$(($RANDOM % 2))
if [ $op_code -eq 0 ]; then
	op="+"
elif [ $op_code -eq 1 ]; then
	op="-"
fi

correct_result=$(expr "$num1" "$op" "$num2")

echo "  "$num1""
echo ""$op" "$num2""
echo -----

while [[ ! ("$result") || "$correct_result" != "$result" ]]; do
	if [ "$result" ]; then
		echo "Wrong answer"
	fi
	echo -n "?"
	read result
done

echo "Right answer"
