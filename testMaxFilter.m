I = imread('./images/lenna.png');
max = maxFilter(I, 3,3);

subplot(2,2,1); 
imshow(rgb2gray(I));
title('Original Image');
hold on;

subplot(2,2,2); 
imshow(max);
title('Max filter Image');
hold on;
