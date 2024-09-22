% Load the grayscale image dimensions
fig3 = imread('fig3.jpg');
[rows, cols] = size(fig3);

% Load the 1D array
load('gray_pixels.mat', 'gray_pixels');

% Convert 1D array back to grayscale image
fig4 = reshape(gray_pixels, [rows, cols]);

% Save the grayscale image
imwrite(fig4, 'fig4.jpg');

% Display the grayscale image
figure;
imshow(fig4);
title('Gray Scale Image from 1D Array (fig4)');