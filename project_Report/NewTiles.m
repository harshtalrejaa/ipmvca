
tileImage = imread("C:\Users\HP\Desktop\download.jpeg");
grayImage = rgb2gray(tileImage);

edges = edge(grayImage, 'sobel');

structuringElement = strel('arbitrary', 2); 
dilatedEdges = imdilate(edges, structuringElement);

filledEdges = imfill(dilatedEdges, 'holes');

cleanedEdges = bwareaopen(filledEdges, 1000);

resultImage = imoverlay(tileImage, cleanedEdges, [1, 0, 0]); % Red overlay

subplot(1, 2, 1), imshow(tileImage), title('Original Image');
subplot(1, 2, 2), imshow(resultImage), title('Detected Faults');