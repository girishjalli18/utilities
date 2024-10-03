#!/bin/bash

# Check if a project name is provided
if [ -z "$1" ]; then
    echo "Usage: ./create_env.sh <project_name>"
    exit 1
fi

PROJECT_NAME=$1
VENV_DIR="$PROJECT_NAME/venv"

# Create the project directory
mkdir -p "$PROJECT_NAME"
echo "created dir $PROJECT_NAME"

# Create a Python virtual environment
python -m venv "$VENV_DIR"

echo "created virtual env $VENV_DIR"

cd "$PROJECT_NAME"
# Activate the virtual environment

source "$VENV_DIR\\Scripts\\activate"
echo "Virtual environment created and activated for project: $PROJECT_NAME"
