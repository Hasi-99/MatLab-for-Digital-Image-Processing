function I = alphaBlend(FG,BG,alpha)
    
    [r,c] = size(FG);
    I = FG;
    for x=1: r
        for y=1: c
            I(x,y) = alpha * BG(x,y) + (1-alpha)*FG(x,y);
        end
    end
