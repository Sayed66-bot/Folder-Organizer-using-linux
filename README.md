📂 File Organizer Script (folder_organizer.sh)
This is a simple BASH shell script designed to automatically organize files within a specified directory by grouping them into folders named after their respective file extensions.

📝 Description
The folder_organizer.sh script scans a target directory (defaulting to the current directory) and performs the following actions:

Checks for the existence of the target directory.

Iterates through every file in the directory.

Extracts the file's extension (e.g., .txt, .jpg).

If the file has no extension, it is moved to a folder named others.

Creates a new directory named after the extension (e.g., txt/, jpg/) if it doesn't already exist.

Moves the file into the corresponding extension folder.

🚀 Usage
1. Make the Script Executable
Before running, you must grant the script execute permission:

Bash

chmod +x folder_organizer.sh
2. Running the Script
You have two ways to run the script:

A. Organize the Current Directory (Default)
If you run the script without any arguments, it will organize all files in the directory where you execute the command.

Bash

./folder_organizer.sh
B. Organize a Specific Directory
Pass the path to the directory you want to clean up as the first argument.

Bash

./folder_organizer.sh /path/to/my/messy/folder
⚠️ Important Notes
Directories Ignored: This script only targets files (-f check). Existing subdirectories will be skipped.

Case Sensitivity: The original script converts file extensions to lowercase before creating the folder. Therefore, both image.JPG and photo.jpg will be moved into a folder named jpg/.

📜 Original Code Breakdown
The core logic of the script:

Bash

# Get the file extension (lowercase)
ext="${file##*.}"
ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

# If file has no extension, put in "others"
if [ "$file" = "$ext" ]; then
    ext="others"
fi

# Create folder if not exists and move the file
mkdir -p "$ext"
mv "$file" "$ext"/
