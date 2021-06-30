#!/bin/bash

# just make sure that the container is stopped & removed... 
#docker restart selenium-chrome
docker stop commentGetter
docker rm commentGetter

# Jupyterhub takes take of looping through URLs and writing over dockerfile each iteration
docker build -t instagram_commentgetter -f ./Dockerfile .

#docker run -it -v /Users/etiennejacquot/Documents/GitHub/ig_pennstories_ocr/data/:/data --network=host --restart=on-failure --name=commentGetter instagram_commentgetter:latest
docker run -it -v /Users/etiennejacquot/Documents/GitHub/ig_pennstories_ocr/data/:/data --network=host --name=commentGetter instagram_commentgetter:latest

# remove the previous container to keep things clean, we'll reuse this container name each time
docker rm commentGetter