#!/usr/bin/env bash

shopt -s nullglob
allfiles=(*.mp4);

for f in "${allfiles[@]}"
do
    echo "$f"
done | sort -t"." -k1n > list.txt

list="list.txt"

j=1
echo $j
conc=''

while read -r file;
do
    tmp="clip$j" 
    echo "$tmp = VideoFileClip(\"$file\")" >> main_part_1.py 

    if [ -z $conc ];then
        conc=$tmp
    else
        conc=$conc','$tmp
    fi

    ((j=j+1))
done < "$list"

echo $conc

echo "Clip has been added successfully"

echo "final_clip = concatenate_videoclips([$conc])" | cat - main_part_2.py > temp && mv temp main_part_2.py

cat main_part_1.py main_part_2.py > main_render.py

python3 main_render.py && python3 add_logo.py

echo "Process teminated !!!"