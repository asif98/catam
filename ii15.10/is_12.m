function r = is_12(x,y,N)

p(1) = 1009;
p(2) = 1013;
p(3) = 1019;

f = @(q,i) mod( mod(x,q)^2 - mod(N,q)*mod(y,q)^2 - i, q) ;


d = x^2 - N*y^2;

if f(4,1) == 0
    i = 1;
elseif f(4,3) == 0
    i = -1;
else 
    r = 0;
    return
end



if N*y^2 > 10^31
    if d == 1
        r = 1;
    elseif d == -1
        r = -1;
    else
        r = 0;            
    end
    
elseif abs(x - sqrt(N)*y) > 1
    r = 0;

else 
    for j = 1:3
        if f(p(j),i) == 0
            r = i;
        else
            r = 0;
            return
        end
    end
end
end