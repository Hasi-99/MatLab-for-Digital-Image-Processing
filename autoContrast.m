function I = autoContrast(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    
    [r,c] = size(I);
    K = 256;
    amin = 0;
    amax = K - 1;
    l = min(min(I));
    h = max(max(I));
    for x=1: r
        for y=1: c
            a = I(x,y);
            a = amin + (a - l)*((amax - amin)/(h - l));
            I(x,y) = a;
        end
    end
            