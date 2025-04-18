function S = linearfilter(I, type)
    
    if length(size(I))==3
        I = rgb2gray(I);
    end
    
    I = im2double(I);
    
    [r,c] = size(I);
    [a,b] = size(type);
    
    S = zeros(r,c);
    
    for x = floor(a/2)+1: r-(floor(a/2)+1)
        for y = floor(b/2)+1: c-(floor(b/2)+1)
            I0 = I(x-(floor(a/2)): x+(floor(a/2)), y-(floor(b/2)): y+(floor(b/2)));
            imf = I0.*type;
            S(x,y) = sum(sum(imf));
        end
    end
    
end
