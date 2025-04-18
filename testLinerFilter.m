I = imread('./images/Lenna.png');

box = ones(3,3)./9;
gous = [1 3 1; 2 6 2; 1 3 1]./20;
lap = [-1 -2 -1; -2 16 -2; -1 -2 -1]./4;

Ibox = linearfilter(I, box);
Igaus = linearfilter(I, gous);
Ilap = linearfilter(I, lap);


subplot(2,2,1); imshow(rgb2gray(I));title('Input Image');hold on;
subplot(2,2,2); imshow(Ibox);title('Input Image');hold on;
subplot(2,2,3); imshow(Igaus);title('Input Image');hold on;
subplot(2,2,4); imshow(Ilap);title('Input Image');hold on;