function I = threshold(I,t)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    [r,c] = size(I);
    for x=1: r
        for y=1: c
            a = I(x,y);
            if (a<t)
                a = 25;
            end
            if (a>=t)
                a = 225;
            end
        I(x,y) = a;
        end
    end