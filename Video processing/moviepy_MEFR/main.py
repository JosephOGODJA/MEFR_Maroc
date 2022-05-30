#!/usr/bin/env python3

from moviepy import *
from moviepy.editor import VideoFileClip, concatenate_videoclips

# Gathering the videos
# Proceed automatically through os module and import the whole file content
# Take example from the /opt/moviepy/examples/compo_from_image.py the file loading
# Maybe by gathering working directory files through os.listdir()

clip1 = VideoFileClip("1.mp4")
clip2 = VideoFileClip("2.mp4")
clip3 = VideoFileClip("3.mp4")
clip4 = VideoFileClip("4.mp4")
clip5 = VideoFileClip("5.mp4")
clip6 = VideoFileClip("6.mp4")
clip7 = VideoFileClip("7.mp4")
clip8 = VideoFileClip("8.mp4")
clip9 = VideoFileClip("9.mp4")
clip10 = VideoFileClip("10.mp4")
clip11 = VideoFileClip("11.mp4")
clip12 = VideoFileClip("12.mp4")
clip13 = VideoFileClip("13.mp4")
clip14 = VideoFileClip("14.mp4")
clip15 = VideoFileClip("15.mp4")
clip16 = VideoFileClip("16.mp4")
clip17 = VideoFileClip("17.mp4")
clip18 = VideoFileClip("18.mp4")
clip19 = VideoFileClip("19.mp4")

# Check for clip size uniformity
# Then compute the right size according to the provided value


# Resize all clips to the same size
# Get clip size

# Concatenate the movies
final_clip = concatenate_videoclips([clip1,clip2,clip3,clip4,clip5,clip6,clip7,clip8,clip9,clip10,clip11,clip12,clip13,clip14,clip15,clip16,clip17,clip18,clip19])

# Add logo to the concatenated videos
# Proceed by computing the optimal logo size according to the computed video size


# Rendering the movies
final_clip.write_videofile("render.mp4")