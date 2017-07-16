#!/bin/bash 

curl -s -L http://dev.fyicenter.com/Interview-Questions/Sixty-Four/index.html | pup -c 'li a attr{href}' > links.txt

base='http://dev.fyicenter.com/Interview-Questions/Sixty-Four/'

while read line; do
{
    echo "Downloading from $base$line"
    curl -s -L $base$line | pup -c 'p' >> all.html
} done < links.txt

echo "All done :)"