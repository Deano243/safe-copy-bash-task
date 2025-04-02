# Safe Copy / Safe Move (`safe_copy.sh`)

A Bash script that enhances traditional `cp` and `mv` operations by checking available disk space at the target destination before copying or moving files. If space is insufficient, the user is guided through cleanup options like deleting old files.

## 🔧 Features (implemented so far)

- ✅ Validate that the source exists.
- ✅ Check if the destination is writable.
- ✅ Calculate source size and available disk space at destination.
- ✅ Prompt the user before proceeding with the operation.
- ✅ If space is insufficient, find and delete files older than 30 days.
