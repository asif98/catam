function [ PmodN , P_squaremodN ] = cont_frac2 (N,k)

r = 0;
s = 1;

pmodN_ = 1;

PmodN = zeros(1,k);
P_squaremodN = zeros(1,k);

for i = 1:k
    a = floor((r+sqrt(N))/s);
    r = s*(a) - r;
    s = (N - r^2)/s ;
    
    if i == 1
        
        pmodN = mod(a,N);
        p_squaremodN = mod_mult(pmodN,pmodN,N);
        
    else
        
        storepmodN = pmodN;
        pmodN = mod( mod_mult(a,pmodN,N) + pmodN_, N) ;
        pmodN_ = storepmodN;
        
        p_squaremodN = mod_mult(pmodN,pmodN,N);
        
    end
    
    PmodN(i) = pmodN ;
    P_squaremodN(i) = p_squaremodN ;
    
end
end
