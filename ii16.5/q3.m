S5 = perms([ 1 2 3 4 5 ]) ;
I = eye(5) ;
A5 = zeros(0,5) ;
for i=1:120
    if det(I(:,S5(i,:))) == 1
        A5 = [ A5 ; S5(i,:) ] ;
    end
end

reducedgeneratingset(S5)
reducedgeneratingset(A5)