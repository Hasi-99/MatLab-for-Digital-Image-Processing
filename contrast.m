function I = contrast(I,s)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    
    [r,c] = size(I);
    for x=1: r
        for y=1: c
            a = I(x,y);
            a = a*s;
            
            if (a<0)
                a = 0;
            end
            if (a>255)
                a = 255;
            end
           I(x,y) = a;
        end
    end