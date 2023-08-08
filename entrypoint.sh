#!/bin/bash

# Set the initial value of the counter
counter=1

while [ "$counter" -le 10 ]; do

  # Print the value of the counter
  echo "$counter"

  # Increment the counter
  counter=$((counter + 1))

done
