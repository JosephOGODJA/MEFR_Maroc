#!/usr/env bash

for i in *.MOV;
do
    ffmpeg -i "$i" -acodec aac -vcodec h264 "./Retouche/${i%MOV}mp4";
done


#mv *.mp4 ./Retouche
