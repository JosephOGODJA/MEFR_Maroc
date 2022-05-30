for pic in *.CR2
do
     darktable-cli "$pic" "$(basename ${pic%.CR2}.jpg)"; # Optimize for png output
done

mkdir ./Retouche

mv *.jpg ./Retouche
