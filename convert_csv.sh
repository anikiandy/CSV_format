#!/bin/bash
count=`ls -1 *.CSV 2>/dev/null | wc -l`
count2=`ls -1 *.csv 2>/dev/null | wc -l`
if [ $count != 0 ]; then
	for file1 in *.CSV
	do
		if [ "$1" = "--overwrite" ]
		then
			sed 's/\t/,/g' "$file1" > "temp";
			mv temp "$file1";
		else
			sed 's/\t/,/g' "$file1" > "c_${file1}"
		fi
	done
else
	echo "no .CSV files"
fi
if [ $count2 != 0 ]; then
	for file in *.csv
	do
		if [ "$1" = "--overwrite" ]
		then
			sed 's/\t/,/g' "$file" > "temp";
			mv temp "$file";
		else
			sed 's/\t/,/g' "$file" > "c_${file}"
		fi
	done
fi
