#!/bin/bash

# Check if packages are outdated
outdated=$(npm outdated)
if [ -z "$outdated" ]; then
  # If no outdated packages, run npm start
  echo "No outdated packages found. Running npm start..."
  npm start
else
  # If outdated packages found, run npm update
  echo "Outdated packages found. Running npm update..."
  npm update
fi