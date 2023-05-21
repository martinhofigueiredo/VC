#!/bin/bash

# Get the list of zip files in the current directory
zip_files=$(ls *.zip)

# Loop through each zip file and extract its contents
for file in $zip_files; do
    unzip "$file"
done
