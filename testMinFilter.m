I = imread('./images/lenna.png');
min = minFilter(I, 3,3);

subplot(2,2,1); 
imshow(rgb2gray(I));
title('Original Image');
hold on;

subplot(2,2,2); 
imshow(min);
title('Min filter Image');
hold on;