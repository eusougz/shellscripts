#!/bin/bash

count=1
for user in $(cat /etc/passwd | cut -f1 -d":"); do
	echo User "$count": "$user"
	count=$((count+1))
done


