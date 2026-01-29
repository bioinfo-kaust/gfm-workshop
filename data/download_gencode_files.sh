#!/bin/bash
# Script to download GENCODE v44 annotation and transcript files

# Create data directory if it doesn't exist
#mkdir -p data

# Set base URL
BASE_URL="https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_44"

# Files to download
FILES=("gencode.v44.annotation.gtf.gz" "gencode.v44.transcripts.fa.gz")

# Download each file
for FILE in "${FILES[@]}"; do
    echo "Downloading $FILE ..."
    wget -c "$BASE_URL/$FILE" -P .
done

echo "Download completed. Files are in the data/ directory."

