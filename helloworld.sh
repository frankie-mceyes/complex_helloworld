#!/bin/bash

WORLD=('H' 'E' 'L' 'L' 'O' '_' 'W' 'O' 'R' 'L' 'D')
WORD=""
COUNT=0

for i in $(seq 1 11)
do
	while [[ "$LETT" != "${WORLD[$COUNT]}" ]]
	do
		echo -ne '\r'
		LETT=$(head -c 1 /dev/urandom | tr -dc '0-9a-zA-Z!@#$%^&*_+-')
		echo -n "$WORD$LETT"
	done
	WORD="$WORD$LETT"
	COUNT=$((COUNT+1))
done
echo
