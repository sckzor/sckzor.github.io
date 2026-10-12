#! /bin/bash

valid=True

if [[ $1 =~ \.html$ ]]; then
	echo "[INFO] The input file is $1"
else
	echo "[FATAL] The specified input file is not an HTML file"
	valid=False
fi

if [[ $2 =~ \.html$ ]]; then
	echo "[INFO] The output file is $2"
else
	echo "[FATAL] The specified output file is not an HTML file"
	valid=False
fi

if [[ $valid == "True" ]]; then
	page=$(cat "$1") 
	while read -r temp ; do
		file=$(echo $temp | grep -oE "[a-zA-Z0-9 \.\/_-]+.html")
		data=$(cat $file)
		page=$(echo $page | awk -v temp="$temp" -v data="$data" "{gsub(temp, data); print}")
		#echo $file
	done < <(echo $page | grep -oE "\{\{\s*[a-zA-Z0-9 \.\/_-]+\.html\s*\}\}")

	
	while read -r temp ; do
		data=$(date +"%b %d, %Y")
		page=$(echo $page | awk -v temp="$temp" -v data="$data" "{gsub(temp, data); print}")
		#echo $page1
	done < <(echo $page | grep -oE "\{\{\s*update\s*\}\}")
	
	while read -r temp ; do
		#echo $temp
		if [[ $3 =~ \.html$ ]]; then
			echo "[INFO] The wildcard file is $3"
			data=$(cat $3)
			page=$(echo $page | awk -v temp="$temp" -v data="$data" "{gsub(temp, data); print}")
		else
			echo "[FATAL] The specified wildcard file is not an HTML file"
		fi
	done < <(echo $page | grep -oE "\{\{\s*wildcard\s*\}\}")

	echo $page > $2
fi
