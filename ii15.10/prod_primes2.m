function [p,C] = prod_primes2(B,N)

n = length(B);
C = zeros(1,n);

if B(1) == -1
    if N < 0
        C(1) = 1;
    end
    [p,C(2:n)] = prod_primes2(B(2:n),abs(N));
    
else
    i = 1;
    while i < n + 1
        while mod(N,B(i)) == 0
            C(i) = C(i) + 1;
            N = N/B(i) ;
        end
        i = i + 1;
    end
    if N == 1
        p = 1;
    else
        p = 0;
    end
end
end