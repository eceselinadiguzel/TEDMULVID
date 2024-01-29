# TEDMULVID
## Overview
This repository is dedicated to our comprehensive research paper, wherein we introduce and utilize the TEDMULVID dataset—a meticulously selected collection of multi-level low-light video data. Our research primarily focuses on evaluating the efficacy of state-of-the-art low-light image enhancement models using this novel dataset. The TEDMULVID dataset is specifically designed to capture the complexities and challenges of changing light conditions, making it an ideal resource for testing and improving the performance of advanced image enhancement algorithms. Throughout our study, we conduct in-depth analyses of these models and compare their performances across different scenes within the dataset to identify their strengths and limitations in the context of low-light image enhancement.

## TEDMULVID Dataset
The TEDMULVID dataset is central to our research. It encompasses a wide range of videos captured under various low-light conditions, providing a rich resource for testing image enhancement models.

### Dataset Image
![TEDMULVID Dataset Sample](https://github.com/eceselinadiguzel/TEDMULVID/assets/84806004/90c24b6f-c8a6-4fd6-81bd-b6233719f490)

### Download
The dataset can be downloaded from the following link:
[Download TEDMULVID Dataset](https://drive.google.com/drive/folders/1-VpD7wjO0ly-EExo4J8ABfphJEdGZSqt?usp=drive_link)

## Models Evaluated
- EnlightenGAN
- Exposure Correction
- Night Enhancement
- RUAS
- SCI

### Usage

Below are the instructions for running each image enhancement model included in this repository.

### EnlightenGAN

Use the following Python code to run the EnlightenGAN model:

### Exposure Correction
For the Exposure Correction model, run the following command in MATLAB: `run demo_single_image.m`

### Night Enhancement
To execute the Night Enhancement model, use the command:`python demo.py`

### RUAS
For testing the RUAS model, use the command: `python test.py`

### SCI
To run the SCI model, use the same command as RUAS: `python test.py`
