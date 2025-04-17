function I = equalize(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    
    K = 256;
    [r,c] = size(I);
    
    h = histogram(I);
    H = cumulativeHistogram(h);
    
    for x=1: r
        for y=1: c
            a = I(x,y);
            I(x,y) = floor((H(a)*(K-1))/(r*c));
        end
    end