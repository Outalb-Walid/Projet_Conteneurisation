#!/bin/bash

# Use the current directory
directory_path="."

# Loop through all the YAML files in the current directory
for file in "$directory_path"/*.yaml; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Apply kubectl command to each YAML file
        kubectl apply -f "$file"
    fi
done
