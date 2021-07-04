function r = powermod(a,b,N)

if b == 1
    r = mod(a,N);
else
    r = powermod(a,floor(b/2),N);
    r = mod_mult(r,r,N);
    
    if mod(b,2) == 1
        r = mod_mult(r,a,N);
    end
end
end
