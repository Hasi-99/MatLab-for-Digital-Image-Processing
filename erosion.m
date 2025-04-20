function S = erosion(I, type)

    J = I(:,:,1);
    J = im2double(J);
    
    [r,c] = size(J);
    
    [a,b] = size(type);
    
    S =zeros(r,c);
    
    for x = floor(a/2)+1: r- floor(a/2)
        for y = floor(b/2)+1 : c - floor(b/2)
            I0 = J(x-floor(a/2):  x+floor(a/2), y-floor(b/2) : y+ floor(b/2));
            I1 = I0.*type;
            S(x,y) = min(I1(:));
        end
    end