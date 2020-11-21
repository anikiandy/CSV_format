#!/bin/bash
for file in *.csv
do
	sed 's/\t/,/g' "$file" > "c_${file}"
done

	

