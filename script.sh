#!/bin/bash
mkdir -p $2

for file in $1/*.jpg
do
    filename_ext=${file%.*}
    filename=${filename_ext##*/}

    touch $2/$filename.markdown

    echo "---" >> $2/$filename.markdown
    echo "image_path: $file" >> $2/$filename.markdown
    echo "---" >> $2/$filename.markdown
done
