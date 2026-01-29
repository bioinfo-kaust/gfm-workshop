# Environment Setup

## 1. Create the conda environment

```bash
bash setup_env.sh
```

This creates the `gfm-workshop` environment from `environment.yml` (Python 3.11, PyTorch, Transformers, PEFT, etc.). It will use `mamba` if available, otherwise falls back to `conda`.

To install manually instead:

```bash
conda env create --name gfm-workshop --file environment.yml --yes
```

## 2. Activate the environment

```bash
conda activate gfm-workshop
```

## 3. Start JupyterLab

```bash
bash start_jupyter_server_password_abc123.sh
```

This launches JupyterLab on port **8888** with password **`abc123`** and no browser auto-open. Access it at `http://<hostname>:8888`.
