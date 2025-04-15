function h = histogram(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    
    h = zeros(1,255);
    [r,c] = size(I);
    
    for x=1: r
        for y=1: c
            a = I(x,y);
            h(a+1) = h(a+1) + 1;
        end
    end
end