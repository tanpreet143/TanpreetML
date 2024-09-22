% Load the resized image
fig2 = imread('fig2.jpg');

% Convert the color image to grayscale
fig3 = rgb2gray(fig2);

% Save the grayscale image
imwrite(fig3, 'fig3.jpg');

% Display the grayscale image
figure;
imshow(fig3);
title('Grayscale Image (fig3)');