function I = downSample(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end

    [r,c] = size(I);

    J = I(1:4:r,1:4:c);

