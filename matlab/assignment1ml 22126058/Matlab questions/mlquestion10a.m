% Import the color image
fig1 = imread('fig1.jpg'); % Replace with your actual file name

% Reduce the size to half
fig2 = imresize(fig1, 0.5);

% Save the resized image
imwrite(fig2, 'fig2.jpg');

% Display the images
figure;
subplot(1, 2, 1);
imshow(fig1);
title('Original Image (fig1)');

subplot(1, 2, 2);
imshow(fig2);
title('Resized Image (fig2)');