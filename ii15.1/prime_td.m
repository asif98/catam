function p = prime_td(N)

if N == 1
    p = 0;
elseif N == 2
    p = 1;
else
    i = 2;
    p = 1;
    while i <= sqrt(N)
        if  mod(N,i) == 0
            p = 0 ;
            break
        else
            i=i+1 ;
        end
    end
end
end