I = imread('./images/lenna.png');
h = histogram(I);
subplot(1,2,1);
imshow(rgb2gray(I));
hold on;
subplot(1,2,2);
plot(h)