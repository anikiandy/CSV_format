#!/bin/bash
count=`ls -1 *.CSV 2>/dev/null | wc -l`
count2=`ls -1 *.csv 2>/dev/null | wc -l`
if [ $count != 0 ] || [ $count2 != 0 ]; then
	
	echo "converting Files"
	for file in *.csv *.CSV
	do
		if [ "$1" = "--overwrite" ]
		then
			sed 's/\t/,/g' "$file" > "temp";
			mv temp "$file";
		else
			sed 's/\t/,/g' "$file" > "c_${file}"
		fi
	done
else
	echo "no matching files found"
fi
