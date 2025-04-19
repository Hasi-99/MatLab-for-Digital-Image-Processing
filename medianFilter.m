function S = medianFilter(I, ro, co)

    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    I = im2double(I);
    
    [r,c] = size(I);
    
    S = zeros(r,c);
    
    for x= floor(ro/2)+1 : r-(floor(ro/2))
        for y = floor(co/2)+1: c -(floor(co/2)+1)
            I0 = I( x -floor(ro/2): x+floor(ro/2), y-floor(co/2): y+floor(co/2));
            I1 = I0(:);
            S(x,y) = median(I1);
        end
    end
end
    