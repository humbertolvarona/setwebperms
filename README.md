# setwebperms

A simple Bash script to recursively set recommended web permissions in a directory tree:

- **Directories** will be set to `755` permissions (`rwxr-xr-x`)
- **Files** will be set to `644` permissions (`rw-r--r--`)

This is commonly required for web servers (like Nginx or Apache) to ensure that:

- All files are readable by the web server and others.
- No files are globally writable or executable.
- All directories are accessible (can be listed and traversed).

## Set permission

```bash
chmod +x setwebperms.sh
```

## Usage

```bash
setwebperms.sh <directory>
```

## Output

After running, you will see:

__Permissions set: 755 for directories, 644 for files in '<directory>'__

## Notes

You may need to run the script as **root** (with **sudo**) if you do not own the files/directories.
This script is safe to use on typical static web content (HTML, CSS, JS, images, etc).
