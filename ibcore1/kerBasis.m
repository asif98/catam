function [C] = kerBasis(p,A)

[m,n]=size(A);
[A,l] = rowechelon(p,A);
r = length(l);
q = setdiff(1:n,l);
   
C = zeros(n,n-r);   
for i = 1:n-r    
     for k = 1:r
        C(l(k),i) = mod(-A(k,q(i)),p);    
     end
        C(q(i),i) = 1;
end  

end