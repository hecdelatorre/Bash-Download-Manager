#!/bin/bash

# Ask the user how many downloads they want to perform
read -p "How many downloads do you want to perform? " count

# Initialize an empty array to store the links
links=()

# Ask the user for the download directory
while true; do
  read -p "Enter the download directory: " directory

  # Check if the directory is a valid directory
  if [ -d "$directory" ]; then
    break
  fi

  echo "Invalid directory. Please enter a valid directory."
done

# Ask the user if they want to create a new folder
while true; do
  read -p "Do you want to create a new folder in the download directory? [y/n] " answer

  if [ "$answer" == "y" ] || [ "$answer" == "n" ]; then
    break
  fi

  echo "Invalid input. Please enter either 'y' or 'n'."
done

# If the user wants to create a new folder, ask for the folder name and validate if it doesn't already exist
if [ "$answer" == "y" ]; then
  while true; do
    read -p "Enter the name of the new folder: " folder

    # Check if the folder doesn't already exist
    if [ ! -d "$directory/$folder" ]; then
      mkdir "$directory/$folder"
      directory="$directory/$folder"
      break
    fi

    echo "A folder with that name already exists. Please enter a different name."
  done
fi

# Ask the user to input the links
for ((i=0; i<count; i++)); do
  while true; do
    read -p "Enter link $((i + 1)): " link

    # Check if the link is a valid HTTP, HTTPS, or magnet link
    if [[ "$link" =~ ^https?://.* ]] || [[ "$link" =~ xt=urn:btih:[a-zA-Z0-9]+ ]]; then
      links+=( "$link" )
      break
    fi

    echo "Invalid link. Please enter a valid HTTP, HTTPS, or magnet link."
  done
done

# Download the files using aria2c and record the start time and end time of each download
start_time=$(date +%s)

for ((i=0; i<count; i++)); do
  link="${links[$i]}"
  echo "Downloading file $((i + 1)) of $count..."
  aria2c "$link" -d "$directory" --seed-time=0
done

end_time=$(date +%s)

# Show a summary of the downloaded files along with the download time
total_time=$((end_time - start_time))
echo "Downloads complete."
echo "Downloaded files are stored in $directory."
echo "Download time: $total_time seconds."
