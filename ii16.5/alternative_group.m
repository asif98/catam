function An = alternative_group(n)

Sn = perms(1:n) ;
I = eye(n) ;
An = zeros(0,n) ;
for i=1:factorial(n)
    if det(I(:,Sn(i,:))) == 1
        An = [ An ; Sn(i,:) ] ;
    end
end