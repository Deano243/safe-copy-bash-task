 Safe Copy Bash Script

A Bash script that safely copies a file or folder to a destination only if there is enough free disk space.  
If not enough space is available, it will attempt to free up space by deleting old files in the destination.

## 🚀 Features Implemented (Up to Step 7)

- ✅ Check if the source file or folder exists.
- ✅ Verify that the destination is writable.
- ✅ Calculate the size of the source and the available space in the destination.
- ✅ If there is enough space, prompt the user to confirm the copy operation.
- ✅ If there is not enough space, find and delete files older than 30 days in the destination.
- ✅ Recheck available space after cleanup.
- ✅ Perform the copy using `cp -r` if the user confirms.
