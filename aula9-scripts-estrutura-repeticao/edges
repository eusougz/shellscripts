#!/bin/bash

maior=$1
menor=$1

for arg; do
	if [ "$arg" -lt "$menor" ]; then
		menor=$arg
	fi
	if [ "$arg" -gt "$maior" ]; then
		maior=$arg
	fi
done

echo "Lower: "$menor""
echo "Higher: "$maior""
