I = imread('./images/lenna.png');
h = histogram(I);
subplot(1,3,1);
imshow(I);
hold on;
subplot(1,3,2);
imshow(rgb2gray(I));
hold on;
subplot(1,3,3);
plot(h)