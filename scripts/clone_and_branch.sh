#!/bin/bash

# Define repositories to clone
REPOSITORIES=(
    "https://github.com/victorfmartins/OpenMLOps-AWS.git"
    "https://github.com/victorfmartins/OpenMLOps-EKS-cluster.git"
    "https://github.com/victorfmartins/OpenMLOps.git"
)

# Loop through each repository
for repo in "${REPOSITORIES[@]}"; do
    # Extract the repository name from the URL
    repo_name=$(echo "$repo" | awk -F '/' '{print $NF}' | sed 's/.git$//')
    
    # Clone the repository
    echo "Cloning $repo_name..."
    git clone "$repo"
    
    # Navigate into the repository directory
    cd "$repo_name" || exit
    
    # Create a new branch named 'dev' and switch to it
    echo "Creating and switching to a new branch 'dev'..."
    git checkout -b dev
    
    # Go back to the parent directory before starting the next iteration
    cd ..
done

echo "All repositories have been cloned and new 'dev' branches have been created."
