I = imread('./images/lenna.png');

a= ones(15,15);
b=[0 0 1 1 1 0 0;
   0 0 1 1 1 0 0;
   1 1 1 1 1 1 1;
   1 1 1 1 1 1 1;
   1 1 1 1 1 1 1;
   0 0 1 1 1 0 0;
   0 0 1 1 1 0 0];


J = erosion(I,a);
K = dilation(I,a);


subplot(1,3,1); imshow(I);title('original image');hold on;
subplot(1,3,2); imshow(J);title('eroted image');hold on;
subplot(1,3,3); imshow(K);title('dilated image');