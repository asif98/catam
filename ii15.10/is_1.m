function r = is_1(x,y,N)

p(1) = 1009;
p(2) = 1013;
p(3) = 1019;
p(4) = 1021;
p(5) = 1031;

f = @(q,i) mod( mod(x,q)^2 - mod(N,q)*mod(y,q)^2 - i, q) ;

if f(4,1) == 0
    i = 1;
elseif f(4,3) == 0
    i = -1;
else 
    r = 0;
    return
end

for j = 1:5
    if f(p(j),i) == 0
        r = i;
    else
        r = 0;
        return
    end
end

end
