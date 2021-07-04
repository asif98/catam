function [B,p] = stabilizer_gen_set ( a , Y )

[orbit,T] = orbit_witness(a,Y);

[m,n] = size(Y);
[p,~] = size(T);
B = zeros(m*p,n);
        
for i = 1:m
    for j = 1:p
        
        yt = product(Y(i,:),T(j,:));
        
        k = find(orbit == yt(a));
        B((i-1)*p+j,:) = product( inverse(T(k,:)) , yt )  ;
    end
end

B = reducedgeneratingset(B);

end