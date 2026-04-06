#!/bin/bash

# Input file
file="input.txt"

# Replace 'give' with 'learning' from line 5 onwards only in lines containing 'welcome'
sed '5,${
    /welcome/ s/give/learning/g
}' "$file" > output.txt
