# ENCODE K562 H3K27ac data with existence checks

# Check and download K562_H3K27ac.bigWig
if [ ! -f "K562_H3K27ac.bigWig" ]; then
    echo "Downloading K562_H3K27ac.bigWig..."
    wget -O K562_H3K27ac.bigWig "https://www.encodeproject.org/files/ENCFF465GBD/@@download/ENCFF465GBD.bigWig"
else
    echo "K562_H3K27ac.bigWig already exists, skipping download."
fi

# Check and download K562_peaks.bed.gz, then unzip if needed
if [ ! -f "K562_peaks.bed" ]; then
    if [ ! -f "K562_peaks.bed.gz" ]; then
        echo "Downloading K562_peaks.bed.gz..."
        wget -O K562_peaks.bed.gz "https://www.encodeproject.org/files/ENCFF038DDS/@@download/ENCFF038DDS.bed.gz"
    else
        echo "K562_peaks.bed.gz already exists, skipping download."
    fi
    
    # Unzip if gz exists and bed doesn't
    if [ -f "K562_peaks.bed.gz" ] && [ ! -f "K562_peaks.bed" ]; then
        echo "Unzipping K562_peaks.bed.gz..."
        gunzip K562_peaks.bed.gz
    fi
else
    echo "K562_peaks.bed already exists, skipping download and unzip."
fi

# Check and download hg38.fa, then index if needed
if [ ! -f "hg38.fa" ]; then
    if [ ! -f "hg38.fa.gz" ]; then
        echo "Downloading hg38.fa.gz..."
        wget -O hg38.fa.gz "https://hgdownload.soe.ucsc.edu/goldenPath/hg38/bigZips/hg38.fa.gz"
    else
        echo "hg38.fa.gz already exists, skipping download."
    fi
    
    # Unzip if gz exists and fa doesn't
    if [ -f "hg38.fa.gz" ] && [ ! -f "hg38.fa" ]; then
        echo "Unzipping hg38.fa.gz..."
        gunzip hg38.fa.gz
    fi
else
    echo "hg38.fa already exists, skipping download and unzip."
fi

# Create samtools index if fa exists and index doesn't
if [ -f "hg38.fa" ] && [ ! -f "hg38.fa.fai" ]; then
    echo "Indexing hg38.fa with samtools..."
    samtools faidx hg38.fa
elif [ ! -f "hg38.fa" ]; then
    echo "Warning: hg38.fa not found, cannot create index."
else
    echo "hg38.fa.fai already exists, skipping indexing."
fi

echo "Done!"
