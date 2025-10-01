# Heavy Menstrual Bleeding Classifier

Associate Researcher I - Technical Assignment

## Project Overview

This project trains a binary text classifier to detect Heavy Menstrual Bleeding (HMB) from clinical notes using DistilBERT, a transformer-based language model. The model achieves high accuracy in distinguishing between HMB-positive and HMB-negative cases based on clinical documentation patterns.

## Project Structure

project/
├── data/
│   └── traininig-dataset.csv          # Clinical notes dataset (50 samples)
├── notebooks/
│   └── train.ipynb                   # Training notebook
├── src/
├── requirements.txt                  # Python dependencies
├── run.sh                           # Bash script to run training
└── README.md                        # This file

## Setup Instructions

### Prerequisites

Python 3.10
Conda or venv
2-3 GB free disk space

### Installation

1. Clone or download this repository
2. Create and activate a conda environment:

conda create -n hmb_project python=3.10 -y
conda activate hmb_project

3. Install dependencies:

pip install -r requirements.txt

4. Make the bash script executable:

chmod +x run.sh