function [chi, colours] = colouring_indep ( G )

[n,~] = size(G);

G_c = ones(n,n) - G - eye(n);

I = max_clique(G_c);

if length(I) == n
    colours = ones(1,n);
    chi = 1;

else  
    colours = ones(1,n);
    V = setdiff( 1:n , I );
    [chi, U ] = colouring_indep ( G( V , V ) );
    chi = chi + 1;
    colours(V) = U + 1 ;
    
end
end

