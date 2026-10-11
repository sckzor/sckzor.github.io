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
		file=$(echo $temp | grep -oE "\w*\.html")
		data=$(cat $file)
		page=$(echo $page | awk -v temp="$temp" -v data="$data" "{gsub(temp, data); print}")
		#echo $page1
	done <<<$(echo $page | grep -oE "\{\{\s*\w*\.html\s*\}\}")

	
	while read -r temp ; do
		data=$(date +"%b %d, %Y")
		page=$(echo $page | awk -v temp="$temp" -v data="$data" "{gsub(temp, data); print}")
		#echo $page1
	done <<<$(echo $page | grep -oE "\{\{\s*update\s*\}\}")

	echo $page > $2
fi
