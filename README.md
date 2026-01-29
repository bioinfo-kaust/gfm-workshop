# Genomic Foundation Models Workshop

A comprehensive 2-day workshop covering genomic foundation models (GFMs), PyTorch fundamentals, and fine-tuning techniques for DNA language models.

## Overview

This repository contains hands-on Jupyter notebooks and lecture slides exploring:

- **Day 1 (morning):** Introduction to GFM concepts, model architecture, and embedding techniques (Nucleotide Transformer, HyenaDNA)
- **Day 1 (afternoon):** PyTorch fundamentals and the Hugging Face ecosystem for genomic models
- **Day 2 (morning):** Fine-tuning strategies using PEFT and LoRA
- **Day 2 (afternoon):** Matching models to research goals

## Quick Start

### 1. Set up the environment

```bash
cd jupyter-notebooks/env_setup
bash setup_env.sh
conda activate gfm-workshop
```

This creates a Python 3.11 environment with PyTorch, Transformers, PEFT, and all dependencies. The script uses Mamba for faster installation if available.

### 2. Start JupyterLab

```bash
bash start_jupyter_server_password_abc123.sh
```

Access the server at `http://localhost:8888` with password `abc123`.

### 3. Download genomic data (optional)

```bash
cd data
bash download_gencode_files.sh
```

## Contents

```
jupyter-notebooks/
├── 1.day1_before_lunch/          # Embedding techniques and model walkthrough
├── 2.day1_after_lunch/           # PyTorch and Hugging Face
├── 3.day2_before_lunch/          # Fine-tuning strategies
└── env_setup/                    # Environment configuration

lecture_slides/                    # PowerPoint presentations for each session
data/                              # GENCODE annotation data
docs/                              # Workshop website materials
```

## Requirements

- Conda or Mamba
- Python 3.11
- ~10 GB disk space for dependencies
- GPU recommended for model fine-tuning

## Key Topics

- **Genomic embeddings:** Working with pre-trained NT and HyenaDNA models
- **PyTorch scaling:** From toy models to large genomic LLMs
- **Efficient fine-tuning:** PEFT, LoRA, and quantization techniques
- **Hugging Face integration:** Loading models, tokenization, and inference

## Environment Details

The environment includes:
- **PyTorch 2.9.1** — Deep learning framework
- **Transformers 4.57.3** — Model loading and inference
- **PEFT 0.13.2** — Parameter-efficient fine-tuning
- **Accelerate 1.11.0** — Distributed training utilities
- **Jupyter 4.x** — Notebook environment

See `jupyter-notebooks/env_setup/environment.yml` for complete dependencies.

## Notes

- Notebooks are organized sequentially; start with Day 1 morning materials
- Each session includes both conceptual explanations and practical code examples
- GPU acceleration is beneficial for fine-tuning exercises
- For detailed architecture and development notes, see [CLAUDE.md](CLAUDE.md)

## License

See repository for licensing information.
