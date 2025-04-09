#!/bin/bash



for filespath in files/*; do
    
    if [ -f "$filespath" ]; then
        filename=$(basename "$filespath")
        firstname="${filename:0:1}"

        lowerletter=$(echo "$firstname" | tr '[:upper:]' '[:lower:]')

        mv "$filespath" "$lowerletter"    
    fi

done

