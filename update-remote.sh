#!/bin/bash

echo "Updating git remote URL for renamed repository..."
echo "Please make sure you've renamed the repository on GitHub first!"
echo ""

# Update the remote URL to the correctly named repository
git remote set-url origin https://github.com/AlaminSarkerFRII/AlaminSarkerFRII.github.io.git

echo "Remote URL updated successfully!"
echo ""
echo "Current remote URLs:"
git remote -v
echo ""
echo "Now you can push your changes with:"
echo "git push -u origin main"
