% Load the grayscale image
fig4 = imread('fig4.jpg');

% Convert grayscale image to RGB color image
fig5 = cat(3, fig4, fig4, fig4);

% Save the color image
imwrite(fig5, 'fig5.jpg');

% Display the color image
figure;
imshow(fig5);
title('Color Image from Grayscale (fig5)');