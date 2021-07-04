function [orbit,witness] = orbit_witness(a,A)

A = reducedgeneratingset(A) ;
[m,n] = size(A);

orbit = a ;
witness = 1:n ;

s = 0;
k = 1;
while k > 0
    for j = 1:k
        for i=1:m
            if ismember( A(i,orbit(s+j)) , orbit ) == 0
                orbit = [ orbit , A(i,orbit(s+j)) ] ;
                witness = [ witness ; product( A(i,:), witness(s+j,:)) ] ;
            end
        end
    end
    s = s + k ;
    k = length(orbit) - s ;
end
            


