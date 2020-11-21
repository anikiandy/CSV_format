#!/bin/bash
for file in *.csv
do
	if [ "$1" == "--overwrite" ]
	then
		sed 's/\t/,/g' "$file" > "temp";
		mv temp "$file";
	else
	
		sed 's/\t/,/g' "$file" > "c_${file}"
	fi
done

	

