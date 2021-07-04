function r = jacobi_symbol(M,N)

M = mod(M,N);

if gcd(M,N) > 1
    r = 0;
elseif M == 1
    r = 1;
elseif mod(M,2) == 0
    r = (-1)^(((mod(N,16))^2-1)/8)*jacobi_symbol(M/2,N);    
else
    r = (-1)^(mod(M-1,8)*mod(N-1,8)/4)*jacobi_symbol(N,M);
end