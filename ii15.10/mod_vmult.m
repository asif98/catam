function m = mod_vmult(v,N)

m = 1;
for i=1:length(v)
    m = mod_mult(m,v(i),N);
end

