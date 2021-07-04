function p = euler_test(a,N)

if mod(N,2) == 0 
    p = 0;
elseif gcd(a,N) > 1
    p = 0;
elseif powermod(a,(N-1)/2,N) == mod(jacobi_symbol(a,N),N)
    p = 1;
else
    p = 0;
end
end