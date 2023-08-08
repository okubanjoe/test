#!/bin/bash

# Set the initial value of the counter
counter=1
while [ "${counter}" -le 10 ]; do
  echo "${counter}"
  counter=$((counter + 1))
done
