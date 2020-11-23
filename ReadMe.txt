convert_csv.sh is a bash script which will run on all .csv files which are in the same directory 

Directions:
1) place all .csv files which you want to be modified in the same directory as convert_csv.sh 
2) run windows powershell
3) change directory to directory containing convert_csv.sh
4) run script by typing >Bash convert_csv.sh
5) Original csv files will remain unmodified. A new copy of each file will be generated with a "c_" prefix.
	the generated files will have all tabs replaced by commas
6) to run in linux enviornement execute by entering: sh convert_csv.sh 
~~~~~update v1.2~~~~~~

added --overwrite flag
1) running the script with overwrite flag will overwrite all csv files in the directory with a new file with tabs replaced with commas

example:   sh convert_csv.sh --overwrite

