
tileImage = imread("C:\Users\HP\Desktop\tile.jpg");

if size(tileImage, 3) == 3
    grayImage = rgb2gray(tileImage);
else
    grayImage = tileImage;
end

edges = edge(grayImage, 'Sobel');

structuringElement = strel('disk', 8); % Adjust the size based on your needs
dilatedEdges = imdilate(edges, structuringElement);

filledEdges = imfill(dilatedEdges, 'holes');

cleanedEdges = bwareaopen(filledEdges, 100);

resultImage = imoverlay(tileImage, cleanedEdges, [1, 0, 0]); % Red overlay

subplot(1, 2, 1), imshow(tileImage), title('Original Image');
subplot(1, 2, 2), imshow(resultImage), title('Detected Faults');
