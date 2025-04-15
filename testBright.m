I = imread('./images/lenna.png');
J = brightness(I,75);
h1 = histogram(I);
h2 = histogram(J);
subplot(1,2,1);
imshow(rgb2gray(I));
hold on;
subplot(1,2,2);
imshow(J);
