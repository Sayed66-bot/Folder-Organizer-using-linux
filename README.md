📁 Linux File Organizer Script

A lightweight and efficient Bash script that automatically organizes files inside any directory based on their file extensions. This tool helps you keep folders clean by grouping files into extension-based subdirectories (e.g., jpg/, png/, pdf/, txt/, etc.).
Files without extensions are placed into an others/ folder.

🚀 Features

1.Automatically organizes files by extension

2.Creates folders dynamically (only when necessary)

3.Converts extensions to lowercase for consistency

4.Handles files without extensions

5.Works on any directory you specify

6.Safe and beginner-friendly Bash code

📌 How It Works

You pass a folder path as an argument

./organizer.sh /path/to/folder


If no path is given, it uses the current directory.

The script checks if the directory exists.

It loops through each file in the folder:

Extracts the file extension

Converts it to lowercase

Detects files with no extension

Creates a folder with that extension name

Moves the file into that folder

Prints a success message after organizing everything.

📂 Example Directory Before
document.PDF
photo.JPG
script.sh
report.docx
README
video.MP4

📁 Example Directory After Running the Script
pdf/
    document.pdf
jpg/
    photo.jpg
sh/
    script.sh
docx/
    report.docx
others/
    README
mp4/
    video.mp4

🧠 Understanding the Code
1️⃣ Source Directory Detection
SOURCE_DIR="${1:-.}"


If you provide a directory → it uses that

Otherwise → it uses . (current folder)

2️⃣ Directory Validation
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory '$SOURCE_DIR' not found!"
    exit 1
fi


Prevents runtime errors by ensuring the folder exists.

3️⃣ Extracting the Extension
ext="${file##*.}"
ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')


${file##*.} extracts the extension

tr converts uppercase letters → lowercase

4️⃣ Detect Files Without Extensions
if [ "$file" = "$ext" ]; then
    ext="others"
fi


If filename = extension → means the file has NO extension.

5️⃣ Folder Creation
mkdir -p "$ext"


Creates the directory only if it doesn’t already exist.

6️⃣ Moving Files
mv "$file" "$ext"/


Moves the file into its corresponding extension folder.

▶️ How to Run
Step 1: Make script executable
chmod +x organizer.sh

Step 2: Run it

Organize the current directory:

./organizer.sh


Organize a specific directory:

./organizer.sh /home/user/Downloads

📜 Full Script

(Optional: You may paste your script here in the README, or link to the file.)

🛠️ Requirements

Linux or macOS

Bash shell

Basic permissions to read/write files

🧩 Use Cases

Cleaning your Downloads folder

Grouping project files by type

Organizing mixed collections of documents, photos, and videos

Automating repetitive file-management tasks

💡 Improvements You Can Add Later

Ignore directories

Log files to track movements

Organize by file type category (Documents/Images/Videos)

Add a reverse option to undo sorting

Add a dry-run mode

🤝 Contributions

Contributions, feature requests, and suggestions are welcome!
Feel free to open an issue or submit a PR.

📄 License

This project is licensed under the MIT License.
