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
