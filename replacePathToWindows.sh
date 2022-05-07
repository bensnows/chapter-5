#!/bin/bash


### 定義 array 的內容
files=("video-streaming" "history" "recommendations")
 
for ((i=0; i < ${#files[@]}; i++))
do
    sed -i "s/\.\/${files[$i]}\//\/src\/${files[$i]}\//g" ./*/docker-compose.yml
done

