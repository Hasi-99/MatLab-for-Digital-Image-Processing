I = imread('./images/car.jfif');
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
IG = imnoise(I,'salt & pepper');

f = @(x) min(x(:));
JMin = nlfilter(IG,[3,3],f);

f = @(x) max(x(:));
JMax = nlfilter(IG,[3,3],f);

f = @(x) median(x(:));
JMed = nlfilter(IG,[3,3],f);

subplot(2,2,1); imshow(I); hold on;
subplot(2,2,2); imshow(JMin); hold on;
subplot(2,2,3); imshow(JMax); hold on;
subplot(2,2,4); imshow(JMed);