#!/bin/bash

# Artist name
ARTIST="Artist Name"

# Album name
ALBUM="Album Name"

# Genre
GENRE="Genre Name"

# Path to the directory containing MP3 files
BASE_DIR="."

# Loop through MP3 files in BASE_DIR
find "$BASE_DIR" -type f -iname "*.mp3" | while read file; do
    # Extract track number and title from the file name
    base_name=$(basename "$file" .mp3)
    track_number=$(echo "$base_name" | cut -d_ -f1)
    title=$(echo "$base_name" | cut -d_ -f2- | sed 's/_/ /g') # Replace underscores with spaces

    # Search for an image file (use the first image found)
    image_file=$(find "$(dirname "$file")" -maxdepth 1 \( -iname "*.jpg" -o -iname "*.png" \) | head -n 1)

    # Use eyeD3 to set artist name, album name, track number, title, genre
    # Additionally, if an image is found, add it as artwork
    if [[ -n $image_file ]]; then
        eyeD3 --artist="$ARTIST" --album="$ALBUM" --track="$track_number" --title="$title" --genre="$GENRE" --add-image="$image_file:FRONT_COVER" "$file"
    else
        eyeD3 --artist="$ARTIST" --album="$ALBUM" --track="$track_number" --title="$title" --genre="$GENRE" "$file"
    fi
done
