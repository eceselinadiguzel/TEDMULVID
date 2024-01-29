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
![TEDMULVID Model Sample](https://github.com/eceselinadiguzel/TEDMULVID/assets/84806004/61f4aea9-758b-4be1-9a9e-130ac2d2e773)

### Usage

Below are the instructions for running each image enhancement model included in this repository.

### EnlightenGAN

Use the following Python code to run the EnlightenGAN model: 
```
from enlighten_inference import EnlightenOnnxModel
import cv2
img = cv2.imread('/path/to/image.jpg')
model = EnlightenOnnxModel()
processed = model.predict(img)
```

### Exposure Correction
For the Exposure Correction model, run the following command in MATLAB: 
```
run demo_single_image.m
```

### Night Enhancement
To execute the Night Enhancement model, use the command:
```
python demo.py
```

### RUAS
For testing the RUAS model, use the command: 
```
python test.py
```

### SCI
To run the SCI model, use the same command as RUAS: 
```
python test.py
```
## Benchmarking

### Benchmarking Metrics

For our benchmark, we've chosen a suite of metrics to evaluate image quality. Each metric provides unique insights into different aspects of image quality:

- **PSNR (Peak Signal-to-Noise Ratio)**: A measure of the peak error between the enhanced and reference image, widely used as a standard for assessing reconstruction quality.

- **SSIM (Structural Similarity Index)**: Evaluates the visual impact of three characteristics of an image: luminance, contrast, and structure, thus providing a more accurate measure of perceived image quality.

- **FSIM (Feature Similarity Index)**: Measures the similarity between two images in terms of low-level features, focusing on significant structural information.

- **VSI (Visual Saliency-Induced Index)**: Incorporates visual saliency into image quality assessment, emphasizing regions that attract more attention.

- **DISTS (Deep Image Structure and Texture Similarity)**: Uses deep learning features to compare the structure and texture similarities between images, reflecting more advanced perceptual image quality.

- **BRISQUE (Blind/Referenceless Image Spatial Quality Evaluator)**: A no-reference image quality metric that assesses images based on spatial distribution of pixels without requiring a pristine reference image.

- **CLIP-IQA**: A metric for image quality assessment based on the CLIP (Contrastive Language-Image Pretraining) model, which evaluates images based on learned representations from large-scale image-text pairs.

These metrics were computed using the PyTorch Image Quality (PIQ) library for their robustness and reliability in various image quality assessment scenarios.

### Using PIQ for Metrics Calculation
We utilize PyTorch Image Quality (PIQ) to calculate these metrics efficiently. PIQ is a versatile Python library that provides a collection of measures and metrics for image quality assessment with PyTorch.

To calculate the image quality metrics using PIQ, run the `image_metrics.py` script:

```
python image_metrics.py
```
