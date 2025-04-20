I = imread('./images/Lenna.png');

subplot(1,2,1);
imshow(I);
title('Original Image');
hold on;

subplot(1,2,2);
imshow(J);
title('Downsapled Image');