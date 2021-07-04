function [p,C] = prod_primes(B,N)

n = length(B);
C = zeros(1,n);

if n == 0 && N > 1
    p = 0;       

elseif n > 0 && N == 1
    p = 1;
    return

elseif B(1) == -1
    if N > 0
        B(1) = [] ;
        [p,C] = prod_primes(B,N);
        C = [0,C];
    else
        B(1) = [] ;
        [p,C] = prod_primes(B,-N);
        C = [1,C];
    end
    
elseif mod(N,B(1)) == 0
    N = N/B(1); 
    [p,C] = prod_primes(B,N);
    C(1) = C(1) + 1;
    
else
    B = setdiff(B,B(1));
    storeme = C(1);
    [p,C] = prod_primes(B,N);
    C = [storeme,C];
end
end

    
    