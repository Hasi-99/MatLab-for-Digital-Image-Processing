I =imread('./images/Lenna.png');
    if length(size(I)) ==3
        I = rgb2gray(I);
    end

prewitt = edge(I, 'Prewitt');
sobel = edge(I, 'Sobel');
roberts = edge(I, 'Roberts');
canny = edge(I, 'canny');

phorizontal = edge(I, 'Prewitt', 'horizontal');
pvertical = edge(I, 'Prewitt', 'vertical');

subplot(2,4,1);imshow(I); title('Original Image');hold on;
subplot(2,4,2);imshow(prewitt); title('Prewitt edge detect');hold on;
subplot(2,4,3);imshow(sobel);title('Sobel edge detect');hold on;
subplot(2,4,4);imshow(roberts);title('Roberts edge detect'); hold on;
subplot(2,4,5);imshow(canny);title('Canny edge detect'); hold on;
subplot(2,4,6);imshow(phorizontal);title('Prewitt horizontal edge detect'); hold on;
subplot(2,4,7);imshow(pvertical);title('Prewitt vertical edge detect');