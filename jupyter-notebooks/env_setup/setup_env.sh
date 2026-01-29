#!/bin/bash

# --- Configuration ---
ENV_FILE="environment.yml"

# --- Script Logic ---

# 1. Extract the environment name from the YAML file
ENV_NAME=$(grep "^name:" "${ENV_FILE}" | awk '{print $2}')

# Check if the extraction was successful
if [ -z "${ENV_NAME}" ]; then
    echo "❌ ERROR: Could not find 'name:' key in ${ENV_FILE}. Please check the file format."
    exit 1
fi

echo "--- Conda Environment Setup: ${ENV_NAME} ---"

# 2. Check if the environment already exists (CORRECTED IF STATEMENT)
if conda info --envs | grep -q "^${ENV_NAME}[[:space:]]"; then
    echo "✅ Environment '${ENV_NAME}' already exists."
    echo "To activate it, run: conda activate ${ENV_NAME}"
    echo "--- Setup Complete ---"
    exit 0
else
    echo "⚠️ Environment '${ENV_NAME}' not found."

    # 3. Dynamic Installer Check and Setup
    INSTALLER=""
    if command -v mamba &> /dev/null; then
        # Mamba is already installed
        INSTALLER="mamba"
        echo "🚀 Using mamba for faster environment creation."
    else
        # Mamba is NOT installed, attempt to install it via conda
        echo "🐌 mamba not found. Attempting to install mamba globally using conda..."
        
        # Install mamba from conda-forge channel
        if conda install -c conda-forge mamba --yes &> /dev/null; then
            INSTALLER="mamba"
            echo "✅ mamba successfully installed. Proceeding with mamba."
        else
            INSTALLER="conda"
            echo "❌ Failed to install mamba using conda. Falling back to conda for environment creation."
        fi
    fi
    
    echo "Attempting to create environment with ${INSTALLER} from ${ENV_FILE}..."

    # 4. Create the environment
    if ${INSTALLER} env create --name "${ENV_NAME}" --file "${ENV_FILE}" --yes; then
        echo ""
        echo "✨ SUCCESS! Environment '${ENV_NAME}' has been successfully created."
        echo "To proceed, you can now activate the environment:"
        echo "  conda activate ${ENV_NAME}"
        echo "--- Setup Complete ---"
        exit 0
    else
        echo ""
        echo "❌ ERROR: Failed to create the environment '${ENV_NAME}'."
        echo "Please check the contents of ${ENV_FILE} and ensure Conda is initialized correctly."
        echo "--- Setup Failed ---"
        exit 1
    fi
fi
