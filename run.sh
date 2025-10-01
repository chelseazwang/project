#!/bin/bash

# Activate conda environment
eval "$(conda shell.bash hook)"
conda activate hmb_project

# Run training notebook and redirect output to log file
jupyter nbconvert --to notebook --execute notebooks/train.ipynb --output train_executed.ipynb > train.log 2>&1

echo "Training complete. Check train.log for output."