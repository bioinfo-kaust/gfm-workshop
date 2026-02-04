#!/usr/bin/env bash

# load conda in non-interactive shells
if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    source "$HOME/miniconda3/etc/profile.d/conda.sh"
elif [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
    source "$HOME/anaconda3/etc/profile.d/conda.sh"
elif [ -f "/opt/conda/etc/profile.d/conda.sh" ]; then
    source "/opt/conda/etc/profile.d/conda.sh"
elif [ -n "$CONDA_EXE" ]; then
    source "$(dirname "$(dirname "$CONDA_EXE")")/etc/profile.d/conda.sh"
fi

# activate env
conda activate gw-unified


# start JupyterLab
jupyter lab --ServerApp.password='argon2:$argon2id$v=19$m=10240,t=10,p=8$bPm24685Jh6rCRs09iB2gg$s0zo4XYu7v69SYUpvElT4imwZkRh+AIog25nEbd+e1c' \
            --ServerApp.token='' \
            --ServerApp.open_browser=False \
            --ServerApp.ip=0.0.0.0 \
            --ServerApp.port=8888
