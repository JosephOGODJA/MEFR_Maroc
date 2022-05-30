mkdir ./Retouche # Create a temporary folder so we can store the processed files

for i in *.aac; # Taking care of all the file presents in the current folder
	do
		ffmpeg -i "$i" -acodec mp3 -ac 2 -ab 128 "./Retouche/${i%aac}mp3"; # Run the conversion command # In this case for audio conversion # Need to change to video conventer based on user preferences allowing conversion flags
		done
