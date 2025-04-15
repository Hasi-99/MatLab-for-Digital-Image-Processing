function I = invert(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    
    [r,c] = size(I);
    amax = 255;
    for x=1: r
        for y=1: c
            a = I(x,y);
            a = amax - a;
            I(x,y) = a;
        end
    end