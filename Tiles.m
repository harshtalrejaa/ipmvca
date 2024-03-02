% Read the tile image
tileImage = imread("C:\Users\HP\Desktop\tile.jpg");

% Convert the image to grayscale if it's a color image
if size(tileImage, 3) == 3
    grayImage = rgb2gray(tileImage);
else
    grayImage = tileImage;
end

% Apply Sobel edge detection
edges = edge(grayImage, 'Sobel');

% Perform morphological operations to enhance and clean the edges
structuringElement = strel('disk', 8); % Adjust the size based on your needs
dilatedEdges = imdilate(edges, structuringElement);

% Fill holes in the dilated edges
filledEdges = imfill(dilatedEdges, 'holes');

% Remove small objects (adjust the area threshold based on your needs)
cleanedEdges = bwareaopen(filledEdges, 100);

% Overlay the cleaned edges on the original image
resultImage = imoverlay(tileImage, cleanedEdges, [1, 0, 0]); % Red overlay

% Display the results
subplot(1, 2, 1), imshow(tileImage), title('Original Image');
subplot(1, 2, 2), imshow(resultImage), title('Detected Faults');
