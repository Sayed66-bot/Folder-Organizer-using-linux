📁 File Organizer Script (Bash)

A lightweight Linux automation script that organizes files into folders based on their file extensions. Ideal for keeping directories clean and maintaining a structured workspace.


📘 Project Overview

A Bash script that scans a directory, identifies file types by extension, and moves them into categorized folders.
Files without extensions are placed inside an others/ directory.



🎯 Project Details

Automates file organization

Supports all file types

Works in any directory

Converts extensions to lowercase

Prevents duplicate folders

Safe, simple, and fast



👨‍💻 Developer

Md Sayed
Creator & Maintainer of this project.



🚀 Features

Automatic detection of file extensions

Creates folders based on extension

Handles uppercase/lowercase extensions

Safely moves files into their respective folders

Clear success and progress output



🔍 Evidence Collection Modules

(Not applicable — included for documentation consistency.)



📊 Reporting Features

The script outputs:

Each file processed

Folders created

Final cleanup summary

Example Output:

Moved 'photo.jpg' → 'jpg/'
Moved 'video.mp4' → 'mp4/'
Moved 'README' → 'others/'



🛠 Installation & Setup
Prerequisites

Linux or macOS

Bash shell

Read/Write permissions

Installation Steps

Clone or download the script

Make the script executable:

chmod +x organizer.sh


Run it:

./organizer.sh



🎮 Usage
Basic Execution

Organize current directory:

./organizer.sh

Organize a Specific Folder
./organizer.sh /path/to/folder

Expected Output

Extension-named folders created

Files moved accordingly

Console feedback for each action

Output Structure Example
jpg/
txt/
pdf/
mp4/
others/



📚 Module Details (Script Breakdown)
1. Directory Validation

Ensures the directory exists before execution.

2. Extension Extraction
ext="${file##*.}"

3. Normalize Extension
tr '[:upper:]' '[:lower:]'

4. Detect No-Extension Files

Moves them into the others/ folder.

5. Folder Creation
mkdir -p "$ext"

6. File Movement
mv "$file" "$ext"/



🗂 Report Features
Console Report Includes:

Total files processed

Folder creation logs

Movement status

Optional Future Enhancements:

HTML report

JSON logs

Undo/Reverse mode

🔧 Configuration Options

(Reserved for future versions—config file not yet included.)



🎓 Educational Value

This project teaches:

Bash scripting

File handling

Conditional logic

Looping constructs

Automation concepts



🧑‍🏫 Academic Considerations
Learning Outcomes

Students learn:

Shell scripting practices

Directory automation

Extension parsing

Practical Linux workflows

Potential Enhancements for Grading

Add logging

Add file-category mappings (Images/Docs/Media)

Add config file support

Add detailed error handling



⚠ Important Notes

The script moves files (does not copy).

Avoid running in system-critical directories (/etc, /usr, /boot).

Test on sample folders if unsure.



⚖️ Legal and Ethical Usage

Use this script only in directories where you have permission to modify content.
The developer is not responsible for data loss resulting from misuse.



🔒 Limitations

Does not scan subdirectories (only top-level files)

Cannot undo operations

No category-based grouping yet

Large directories may take extra time

Special characters in filenames may need manual handling



🐛 Troubleshooting
1. Permission Denied

Run:

chmod +x organizer.sh

2. Directory Not Found

Ensure the folder path is correct.

3. Files Didn’t Move

Check:

Folder is correct

Script has permission

Directory contains files

4. “mv: cannot move file”

Usually caused by:

Same filename existing in destination

Permission issues

File being open



❗ Common Issues
Files without extensions → go to others/

This is expected behavior.

Uppercase extensions

Automatically converted to lowercase.

Existing folders

Script safely continues using mkdir -p.

System folders

Never run inside system-critical directories.



❓ FAQ

1. Does it delete files?
No — it only moves them.

2. Can it organize subfolders?
Not yet.

3. Can it undo the operation?
Reverse mode is planned for future updates.



🤝 Contribution Guidelines

Fork the repo

Create a branch

Make your changes

Submit a pull request



📄 License

Licensed under the MIT License.
