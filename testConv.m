I = imread('./images/lenna.png');

J = imconv(I,0.2);

H1 = histogram(I);
H2 = histogram(J);

h1 = cumulativeHistogram(H1);
h2 = cumulativeHistogram(H2);

subplot(2,2,1);imshow(rgb2gray(I));title('Original Image');hold on;
subplot(2,2,2);imshow(J);title('Convolution Image');hold on;
subplot(2,2,3);bar(h1);title('Histogram of Original Image');hold on;
subplot(2,2,4);bar(h2);title('Histogram of Convolution Image');