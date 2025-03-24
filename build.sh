#!/bin/bash

# Loop through all directories in the docker folder
for dir in docker/* ; do
  # Get the directory name
  dir_name=$(basename -- $dir)

  # Get the timestamp with precision to minute
  timestamp=$(date +"%Y%m%d%H%M")

  # Build the image with the directory as the build path and the timestamp as the tag
  docker build -t hpdevelop/${dir_name}:${timestamp} -f docker/${dir_name}/Dockerfile
done
