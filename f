#!/bin/bash


# imagemagick
# https://askubuntu.com/questions/1164/how-to-easily-resize-images-via-command-line

slim(){

  DIR=~/Pictures/copy
  
  cd $DIR

  # convert aoe2_viper_hera.png -resize 25% -set filename:mysize '%wx%h' 'rose_%[filename:mysize].jpeg'
  convert aoe2_viper_hera.png -resize 512x -set filename:mysize '%wx%h' '%filename_%[filename:mysize].jpeg'

#   convert aoe2_viper_hera.png -define filter:blur=0.5 -resize 25% out2.jpg
#   convert aoe2_viper_hera.png -filter spline -resize 25% \
#           -unsharp 0x0.75+0.75+0.008  out1.jpeg
  # - unsharp 0x6+0.5+0        
  # - unsharp 12x6+0.5+0
  # -unsharp 0x0.75+0.75+0.008

}

imagemagick_convert(){

  DIR=~/Pictures/copy
  cd $DIR

  for file in *.png;
    do convert $file -resize 512x -set filename:mysize '%wx%h' "`basename $file .png`_%[filename:mysize].jpeg";
  done;

}


"$@"