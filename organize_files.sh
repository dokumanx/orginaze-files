#!/bin/bash

declare -a pdf="pdf"
declare -a png="png"
declare -a mp4="mp4"
declare -a mp3="mp3"
declare -a svg="svg"
declare -a jpg="jpg"
declare -a rar="rar zip"
declare -a epub="epub"
declare -a docx="docx"
declare -a txt="txt"
declare -a excel="csv"
declare -a jpeg="jpeg"
declare -a yaml="yaml"


file_types="$pdf $png $mp4 $svg $jpg $rar $epub $docx $txt $excel $jpeg $yaml $mp3"

for types in $file_types; do

	file_name=${types[0]}
	if [ -d ".\/${file_name}_files" ]; then
		echo "~~~ ${file_name}_files already exist"
		find . -iname "*.$file_name" ! -path ".\/${file_name}_files/*" -exec mv {} "./.\/${file_name}_files" \;
	else
		mkdir "${file_name}_files"
		echo "+++ ${file_name}_files created."

		find . -iname "*.$file_name" ! -path ".\/${file_name}_files/*" -exec mv {} "./.\/${file_name}_files" \;
	fi

done
