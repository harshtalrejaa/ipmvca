Tile Fault Detection System

Overview
This project aims to develop an automated system for detecting faults in tiles, such as cracks and discolorations, to improve quality control and efficiency. The current visual inspection method is slow and error-prone, and this system seeks to replace it with a highly accurate, real-time fault detection mechanism using image processing techniques.


Features
Automated Fault Detection: Accurately identifies faults like cracks and discolorations in tile images.
Real-Time Processing: Provides near-instantaneous analysis and results.
Image Processing Pipeline: Includes grayscale conversion, edge detection, dilation, hole filling, and small object removal.
Fault Highlighting: Overlays detected faults onto the original image for easy visualization.

Prerequisites
Python: Ensure Python 3.x is installed.

Usage

Load the Image: Store your tile image in a variable for processing.

Convert to Grayscale: Use the rgb2gray function to convert the image to grayscale.

Edge Detection: Apply the Sobel edge detection operator to identify edges in the grayscale image.

Edge Dilation: Use a circular structuring element with a radius of 8 pixels to dilate the detected edges.

Fill Holes: Fill any holes within the dilated edges to create a continuous representation of faults.

Remove Small Objects: Remove small objects from the filled edges based on a specified area threshold.

Highlight Faults: Overlay the cleaned edges onto the original image in red to highlight the detected faults.

Visualization: Display the final image with highlighted faults.

