#!/bin/zsh

# Change to the directory containing the images
cd /home/insouciiance/.config/hypr/Assets || exit 1

# Create an array of matching files
images=(Lockscreen_*.*)

# Check if array is not empty
if [[ ${#images[@]} -eq 0 ]]; then
  echo "No matching files found."
  exit 1
fi

# Pick a random image
random_image=${images[RANDOM % ${#images[@]} + 1]}

# Print the selected image
echo "/home/insouciiance/.config/hypr/Assets/$random_image"
