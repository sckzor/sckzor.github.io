
if [ -n $1 ]; then
	echo "[INFO] The input directory is $1"
else
	echo "[FATAL] There is no input directory"
	valid=False
fi

if [[ $2 =~ \.html$ ]]; then
	echo "[INFO] The output file is $2"
else
	echo "[FATAL] The specified output file is not an HTML file"
	valid=False
fi


if [[ $valid == "False" ]]; then
	exit
fi

for file in $1/*.md; do 
    if [ -f "$file" ]; then 
        echo "[INFO] Processing \"$file\""
        python -m markdown  "$file" > "${file%.*}_body.html"
	../render.sh project_t.html "${file%.*}.html" "${file%.*}_body.html"
        card_string=$(cat "$file" | grep -oE '<!--CARD\s*.+\s*-->')
        card_title=$(echo $card_string | awk '{match($0, /<!--CARD ([a-zA-Z0-9. -]+) \| ([a-zA-Z0-9. -]+) \| ([a-zA-Z0-9\._\/-]+) -->/, arr); print arr[1]}')
        card_date=$(echo $card_string | awk '{match($0, /<!--CARD ([a-zA-Z0-9. -]+) \| ([a-zA-Z0-9. -]+) \| ([a-zA-Z0-9\._\/-]+) -->/, arr); print arr[2]}')
        card_photo=$(echo $card_string | awk '{match($0, /<!--CARD ([a-zA-Z0-9. -]+) \| ([a-zA-Z0-9. -]+) \| ([a-zA-Z0-9\._\/-]+) -->/, arr); print arr[3]}')
	echo "<div>" >> $2
        echo "<img src=\"$card_photo\" class=\"projectimage\" alt=\"$card_title\">" >> $2
        echo "<div class=\"title\"> <h2 class=\"lightfont\"> <a class=\"projectlink\" href=\"Portfolio/${file%.*}.html\"> $card_title </a> </h2> </div>" >> $2
        echo "<div class=\"subtitle\"> <h4 class=\"lightfont\"> $card_date </h4> </div>" >> $2
        echo "<hr>" >> $2
	echo "</div>" >> $2
    fi 
done



