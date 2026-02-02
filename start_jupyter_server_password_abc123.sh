#!/usr/bin/env bash

# load conda/mamba in non-interactive shells
if ! command -v conda &> /dev/null; then
    # Try common conda/mamba installation locations
    for base_dir in "$HOME/miniforge3" "$HOME/mambaforge" "$HOME/miniconda3" "$HOME/anaconda3" "/opt/conda"; do
        if [[ -f "$base_dir/etc/profile.d/conda.sh" ]]; then
            source "$base_dir/etc/profile.d/conda.sh"
            break
        fi
    done
fi

# activate env (skip if already active)
if [[ "$CONDA_DEFAULT_ENV" != "gw-unified" ]]; then
    conda activate gw-unified
fi


# start JupyterLab
jupyter lab --ServerApp.password='argon2:$argon2id$v=19$m=10240,t=10,p=8$bPm24685Jh6rCRs09iB2gg$s0zo4XYu7v69SYUpvElT4imwZkRh+AIog25nEbd+e1c' \
            --ServerApp.token='' \
            --ServerApp.open_browser=False \
            --ServerApp.ip=0.0.0.0 \
            --ServerApp.port=8888
