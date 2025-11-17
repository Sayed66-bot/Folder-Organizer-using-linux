#!/usr/bin/env bash
# Source directory
SOURCE_DIR="${1:-.}"

# Check if directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory '$SOURCE_DIR' not found!"
    exit 1
fi

# Go to the source directory
cd "$SOURCE_DIR" || exit

# Loop through all files
for file in *; do
    # Check if it's a file
    if [ -f "$file" ]; then
        # Get the file extension (lowercase)
        ext="${file##*.}"
        ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')
        # If file has no extension, put in "others"
        if [ "$file" = "$ext" ]; then
            ext="others"
        fi

        # Create folder if not exists
        mkdir -p "$ext"

        # Move the file to the folder
        mv "$file" "$ext"/
        echo "Moved '$file' → '$ext/'"
    fi
done

echo "✅ All files have been organized successfully!"
