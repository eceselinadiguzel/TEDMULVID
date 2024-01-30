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
  
### Models Results For Scene-1
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
## Benchmarking Results

Our benchmarking results are summarized in two tables representing the performance of different deep learning models across multiple metrics.

### Scene 1 - Benchmarking Results

![Table-1](https://github.com/eceselinadiguzel/TEDMULVID/assets/84806004/a6a92754-da7d-4d45-81c7-c63fa20ceea2)

*Table 1: Performance analysis of various models for Scene 1.*

Table 1 presents a comparative analysis of the performance of various deep learning models across seven videos from Scene 1. It highlights the best and second-best metric scores to indicate the effectiveness of models for specific aspects of image enhancement. In Scene 1, the Night Enhancement and SCI models generally deliver the highest quality enhancements, with the former excelling in PSNR, SSIM, and CLIP-IQA, and the latter in FSIM, VSI, and BRISQUE. EnlightenGAN stands out in the DISTS metric, showcasing its strength in perceptual similarity, while Exposure Correction particularly shines in the CLIP-IQA metric.

### Scene 2 - Benchmarking Results

![Table-2](https://github.com/eceselinadiguzel/TEDMULVID/assets/84806004/f8cd0cd9-8c79-40ff-adaa-4c57dd609e09)

*Table 2: Performance analysis of various models for Scene 2.*

Table 2 illustrates the top-performing models for various image quality metrics across ten videos in Scene 2. The best results for each metric are underlined and bolded, with second-best results in bold, clearly showing which models are leading in enhancing image quality for each specific metric.

The analysis for Scene 2 reveals SCI as a particularly strong contender, achieving the best results across several metrics, apart from CLIP-IQA. This showcases SCI's comprehensive and robust image enhancement capabilities. Moreover, Night Enhancement and Exposure Correction models also feature prominently, securing a significant share of the top scores. This indicates their effectiveness in improving image quality, making them suitable choices for the conditions encountered in Scene 2.

## Comprehensive Assessment Of Image Quality Enhancement Models In TEDMULVID Dataset

![Results](https://github.com/eceselinadiguzel/TEDMULVID/assets/84806004/0fdee170-2431-4d40-99f2-74d18eb5b66b)

*Table 3: An illustrative comparison of image enhancement outcomes across Scenes 1 through 3, showcasing the superior performance of advanced deep learning models on a per-metric basis, with the top results for each scene emphasized in bold red.*

Table 3 offers a nuanced evaluation of various models across three distinct scenes. For Scene 1, the Night Enhancement model emerges as a significant performer, adept at rendering images with enhanced clarity and integrity. Concurrently, the SCI model stands out for its proficient preservation of texture and visual saliency, demonstrating its strength in these key areas.

As we move to Scene 2, SCI maintains its lead in texture and salience metrics, with Night Enhancement performing best in SSIM. Exposure Correction is also noteworthy, ranking second for PSNR and CLIP-IQA. In Scene 3, SCI continues to excel in overall image quality enhancement, while Night Enhancement performs exceptionally in DISTS and CLIP-IQA, indicating its versatility.

The RUAS model, however, does not lead in any metric, suggesting its constrained utility in this test set. On the other hand, EnlightenGAN's peak performance in DISTS for Scenes 1 and 2 highlights its exceptional capability in preserving perceptual quality.

These insights underscore the distinct strengths of the SCI and Night Enhancement models, guiding their application in real-world image enhancement scenarios. The selection of the most fitting algorithm is crucial and should be based on specific enhancement goals and scene characteristics, as evidenced by our comprehensive benchmarks.

## References

This section lists the key references that informed and supported our research:

1. **[Author(s) Name]**, _"[Paper Title]"_, [Journal/Conference Name], Year.
2. **[Another Author(s) Name]**, _"[Another Paper Title]"_, [Journal/Conference Name], Year.
   - Continue with additional references as needed.

## Citation

If you use our work or dataset in your research, please cite our paper:

```
@article{YourPaper2024,
  title = {A NEW MULTI-LEVEL LOW-LIGHT VIDEO DATASET FOR BENCHMARK OF LOW-LIGHT IMAGE ENHANCEMENT METHODS},
  url = {https://arxiv.org/...},
  author = {Ece Selin Adıgüzel, Ayşe Almacı, Doruk Eren, Yücel Çimtay, Gökçe Nur Yılmaz},
  doi = {...},
  publisher = {arXiv},
  year = {2024}
}
```

## Contact

For further inquiries or collaboration opportunities, feel free to reach out:

- **Ece Selin Adıgüzel**
  - Email: [Click to Email](mailto:eceselinadiguzel@gmail.com)
  - LinkedIn: [![LinkedIn][1.1]][1]

- **Ayşe Almacı**
  - Email: [Click to Email](mailto:ayse.almaci@tedu.edu.tr)
  - LinkedIn: [![LinkedIn][1.1]][2]

- **Doruk Eren**
  - Email: [Click to Email](mailto:dorukeren1986@gmail.com)
  - LinkedIn: [![LinkedIn][1.1]][3]

- **Yücel Çimtay**
  - Email: [Click to Email](mailto:yucel.cimtay@gmail.com)
  - LinkedIn: [![LinkedIn][1.1]][4]

<!-- Icons -->
[1.1]: https://i.stack.imgur.com/gVE0j.png (linkedin icon with padding)

<!-- Links to your social media accounts -->
[1]: https://www.linkedin.com/in/eceselinadiguzel/
[2]: https://www.linkedin.com/in/aysealmaci/
[3]: https://www.linkedin.com/in/doruk-eren-70824420a/
[4]: https://www.linkedin.com/in/y%C3%BCcel-%C3%A7imtay-34b45645/





