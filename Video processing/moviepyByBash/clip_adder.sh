#!/usr/bin/env bash
# Post conversion script handled with bash
# If you feel comfortable with the files in the current working directory you can simply add the MOV to mp4 comversion script above and take a coffee.

j=1 # Initialize the clip counter
conc='' # Initialize the concatenate string variable

for file in *.mp4 # check all available mp4 files
do
    tmp="clip$j" # Python clip variable addition
    # Be aware that the files are added in increasing name number. So make a clean file rename after their conversion
    echo "$tmp = VideoFileClip(\"$file\")" >> main_part_1.py # Python video clip initialization

    if [ -z $conc ];then
        conc=$tmp
    else
        conc=$conc','$tmp
    fi

    echo $j
    echo $conc
    ((j=j+1))
done

echo "Clip has been added successfully"

# Do this in the case you want to add the add this python line between the python main file.
# Here i just add the clips in the first part of the main.py file and concate with the second part. This my be useful as the next steps is going to be huge. 
# Anyways enjoy or improve :) !!!
echo "final_clip = concatenate_videoclips([$conc])" | cat - main_part_2.py > temp && mv temp main_part_2.py

# This is how we combine the two parts of the code
cat main_part_1.py main_part_2.py > main_render.py

python3 main_render.py && python3 add_logo.py

echo "Process teminated !!!"
