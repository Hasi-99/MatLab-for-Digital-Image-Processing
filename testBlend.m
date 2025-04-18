BG = imread('./images/background.jfif');
FG = imread('./images/forground.png');

alpha = 0.5;

I = alphaBlend(FG,BG,alpha);

h1 = histogram(BG);
h2 = histogram(FG);
h3 = histogram(I);

subplot(2,3,1);imshow(BG);title('Background Image');hold on;
subplot(2,3,2);imshow((FG));title('Forground Image');hold on;
subplot(2,3,3);imshow(I);title('Blended Image(Output)');hold on;
subplot(2,3,4);bar(h1);title('Histogram of Background Image');hold on;
subplot(2,3,5);bar((h2));title('Histogram of Forground Image');hold on;
subplot(2,3,6);bar(h3);title('Histogram of Blended Image(Output)');
