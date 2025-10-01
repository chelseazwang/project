# Heavy Menstrual Bleeding Classifier

Associate Researcher I - Technical Assignment

## Project Overview

This project trains a binary text classifier to detect Heavy Menstrual Bleeding (HMB) from clinical notes using DistilBERT, a transformer-based language model. The model achieves high accuracy in distinguishing between HMB-positive and HMB-negative cases based on clinical documentation patterns.

## Project Structure

* data/
    * traininig-dataset.csv - Clinical notes dataset (50 samples)
* notebooks/
    * train.ipynb - Training notebook
* src/
* requirements.txt - Python dependencies
* run.sh - Bash script to run training
* README.md - This file

## Setup Instructions

### Prerequisites

* Python 3.10
* Conda or venv
* 2-3 GB free disk space

### Installation

1. Clone or download this repository

```git clone https://github.com/chelseazwang/project.git```

2. Create and activate a conda environment:


```conda create -n hmb_project python=3.10 -y```
```conda activate hmb_project```


3. Install dependencies:

```pip install -r requirements.txt```

4. Make the bash script executable:

```chmod +x run.sh```

## Running the Code

1. Option 1: Run with bash script (recommended)

```./run.sh```

This will activate the environment, run training, and save output to train.log.

2. Option 2: Run Jupyter notebook

```conda activate hmb_project```
```jupyter notebook```
Open notebooks/train.ipynb and run all cells

## Expected Output

After training completes, you should see:

* Validation Accuracy: Printed to console/log
* F1 Score: Printed to console/log
* Confusion Matrix: Saved as confusion_matrix.png
* Training Log: Saved as train.log (if using run.sh); full output in train_executed.ipynb in notebooks/

## Model Details

* Base Model: distilbert-base-uncased
* Task: Binary sequence classification
* Training: 2 epochs
* Batch Size: 8
* Max Sequence Length: 128 tokens
* Train/Val Split: 80/20 (stratified)

## Dataset

* Total Samples: 50 clinical notes
* Classes:
    * 0 = No HMB (24 samples)
    * 1 = HMB present (26 samples)
* Text Length: 265-407 characters per note

## Requirements

See requirements.txt for full list. Key dependencies:

* transformers >= 4.30.0
* torch >= 2.0.0
* pandas >= 1.5.0
* scikit-learn >= 1.2.0
* numpy >= 1.23.0, < 2.0.0

## Notes
* Training takes approximately 30-60 seconds on CPU
* The model checkpoints are saved to ./results/ during training
* GPU is not required but will speed up training if available

## Author
Chelsea Wang - Associate Researcher I Applicant