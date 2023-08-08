#!/bin/bash

# Get the first argument from the command line
name=$1

# Print a greeting to the user
echo "Hello $name"

# Get the current time
time=$(date)

# Append the current time to the GitHub output file
echo "time=$time" >> $GITHUB_OUTPUT
