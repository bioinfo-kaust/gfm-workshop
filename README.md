# Genomic Foundation Models Workshop

[![Website](https://img.shields.io/badge/Website-gfm--workshop-blue?style=flat&logo=github)](https://bioinfo-kaust.github.io/gfm-workshop/)

A comprehensive 2-day workshop covering genomic foundation models (GFMs), PyTorch fundamentals, and fine-tuning techniques for DNA language models.

## Overview

This repository contains hands-on Jupyter notebooks and lecture slides exploring:

- **Day 1 (morning):** DNA encoding/tokenization (BPE, k-mer) and Nucleotide Transformer architecture
- **Day 1 (afternoon):** PyTorch fundamentals, embedding extraction, and the Hugging Face ecosystem
- **Day 2 (morning):** Fine-tuning strategies including full fine-tuning, PEFT, and LoRA
- **Day 2 (afternoon):** Practical K562 ChIP-seq classification and regression using DNABERT2, HyenaDNA, and Nucleotide Transformer

## Quick Start

### 1. Set up the environment

```bash
cd jupyter-notebooks/env_setup
bash setup_env.sh
conda activate gw-unified
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
# Download GENCODE reference data
bash download_gencode_files.sh

# Download K562 ChIP-seq data for Day 2 afternoon exercises
bash download_k562_h3k27ac_files.sh
```

## Contents

```
jupyter-notebooks/
├── 1.day1_before_lunch/          # DNA encoding, tokenization, and model architecture (2 notebooks)
├── 2.day1_after_lunch/           # PyTorch fundamentals and Hugging Face ecosystem (4 notebooks)
├── 3.day2_before_lunch/          # Fine-tuning strategies with PEFT/LoRA (4 notebooks)
├── 4.day2_after_lunch/           # K562 ChIP-seq practical examples (5 notebooks)
└── env_setup/                    # Environment configuration and setup scripts

lecture_slides/                    # PowerPoint presentations for each session
data/                              # GENCODE and K562 data download scripts
docs/                              # Workshop website materials
```

### Notebook Details

**Day 1 Morning (1.day1_before_lunch/)**
- `01_dna_encoding_and_tokenization.ipynb` - BPE, k-mer tokenization, and embedding layers
- `02_nucleotide_transformer_architecture.ipynb` - Model anatomy and transformer architecture

**Day 1 Afternoon (2.day1_after_lunch/)**
- `00_hf_inference_example.ipynb` - Quick Hugging Face inference demo
- `01_pytorch_fundamentals.ipynb` - PyTorch basics for genomic models
- `02_embedding_extraction_comparison.ipynb` - Comparing HyenaDNA vs NT embeddings
- `03_huggingface_ecosystem.ipynb` - Model Hub, datasets, and APIs

**Day 2 Morning (3.day2_before_lunch/)**
- `01.statistics-genomic-llm-finetuning-v1.ipynb` - Statistical foundations for fine-tuning
- `02_peft_lora_finetuning.ipynb` - Parameter-efficient fine-tuning with LoRA
- `nucleotide_transformer_dna_sequence_modelling_with_peft.ipynb` - NT + PEFT practical example
- `sequence_classification_finetuning.ipynb` - Full fine-tuning for sequence classification

**Day 2 Afternoon (4.day2_after_lunch/)**
- `k562_dnabert2_classification.ipynb` - DNABERT2 for K562 ChIP-seq classification
- `k562_hyenadna_classification.ipynb` - HyenaDNA for K562 ChIP-seq classification
- `k562_hyenadna_regression.ipynb` - HyenaDNA for K562 regression tasks
- `k562_nt_classification.ipynb` - Nucleotide Transformer for K562 classification
- `k562_nt_regression.ipynb` - Nucleotide Transformer for K562 regression

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

See `jupyter-notebooks/env_setup/environment-unified.yml` for complete dependencies.

## Notes

- Notebooks are organized sequentially; start with Day 1 morning materials
- Each session includes both conceptual explanations and practical code examples
- GPU acceleration is beneficial for fine-tuning exercises

## Contact

**Ikram Ullah**
Staff Scientist, KAUST Bioinformatics Platform
King Abdullah University of Science and Technology (KAUST), Saudi Arabia
Email: [ikram.ullah@kaust.edu.sa](mailto:ikram.ullah@kaust.edu.sa)

## License

See repository for licensing information.
