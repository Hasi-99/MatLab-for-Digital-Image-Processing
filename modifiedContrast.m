function I = modifiedContrast(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    [r,c] = size(I);
    amin = 0;
    amax = 255;
    qlow = 0.005;
    qhigh = qlow;
    
    h = histogram(I);
    H = cumulativeHistogram(h);
    
    a1low = find(H>r*c*qlow, 1 );
    a1high = find(H<=r*c*(1-qhigh), 1, 'last' );
    
    for x=1: r
        for y=1: c
            a = I(x,y);
            if (a<=a1low)
                I(x,y) = amin;
            else if (a>=a1high)
                    I(x,y) = amax;
                else
                   I(x,y) = amin + (a-a1low) * ((amax - amin)/(a1high-a1low));
                end
            end
        end
    end
            