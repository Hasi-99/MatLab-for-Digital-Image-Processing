function S = imconv(I,H)

    I = rgb2gray(I);
    I = im2double(I);
    [r,c] = size(I);


    S = zeros(r,c);

    for i = 2:r-1
        for j = 2:c-1
            I0 = I(i-1:i+1, j-1:j+1);
            imf = I0.*H; % point by multiply
            S(i,j) = sum(sum(imf));
        end
    end
    
    S = im2uint8(S);
end

