@@ -0,0 +1,25 @@
#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Specify both parameters:\n 1. path to file with file name \n 2. string you want to be written in to the file"
    exit 1
fi
writefile=$1
writestr=$2
if [ ! -e $writefile ]; then
    echo "$1 file not found, creating file $1"
    dirpath=$(dirname "$writefile ")
    if [ $? -ne 0 ]; then
        echo "could not create file"
    fi
    mkdir -p $dirpath
fi
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "could not write to file $writefile"
    exit 1
fi
echo "write success!"