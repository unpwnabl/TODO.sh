#!/bin/bash

file_path="${PWD}/TODO.txt"

# Check if file exists and is readable
if [ -e $file_path ]; then
	if [ -r $file_path ]; then
		OS="`uname`"
		case $OS in
  			'Linux')
    				clear
    				;;
  			'WindowsNT')
    				cls
    				;;
  			'Darwin') 
    				clear
    				;;
			*) 
				echo "Unknown Operating System, not clearing screen..."
				;;
		esac
		while IFS= read -r line; do
			lenght=${#line}
			if [[ ${line:0:4} == "TODO" ]]; then
				echo -ne "\e[1;93mTODO\e[0m"
				echo "${line:4}"
			elif [[ ${line:0:2} == "[]" ]]; then
				echo -ne "\e[1;96m[]\e[0m"
				echo "${line:2:lenght}"
			elif [[ ${line:0:3} == "[X]" ]]; then 
				echo -ne "\e[1;96m[\e[0m"
				echo -ne "\e[1;97mX\e[0m"
				echo -ne "\e[1;96m]\e[0m"
				echo "${line:3:lenght}"
			elif [[ ${line:0:3} == "[!]" ]]; then
				echo -ne "\e[1;97;103m$line\e[0m"
			fi
		done < $file_path
		echo
	else
		echo -e "\e[31m[FATAL ERROR]: File is not readable.\e[0m"
		exit 1
	fi
else
	echo -e "\e[31m[FATAL ERROR] No file named TODO.txt found in current directory: $file_path\e[0m"
	exit 1
fi
