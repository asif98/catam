function m = mod_mult(a,b,N)

if b < 10^5
    m = mod(a*b,N);
else 
    u = floor(b/10^5);
    v = b - 10^5*u;
    m = mod( 10^5*(mod(a*u,N)) , N) + mod(a*v,N);
    m = mod(m,N);
end