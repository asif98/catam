function [A,l] = rowechelon(p,A)

I = inverse(p);
A = mod(A,p);
[m,n]=size(A);
l = zeros(1,0);
L = 1;

for i = 1:n
    for j = L:m
        if A(j,i) ~= 0
            A(j,:) = mod( A(j,:).*I(A(j,i)) ,p); 
            
            storeMe = A(j,:); % store row v of A
            A(j,:) = A(L,:); % copy row u of A into row v of A
            A(L,:) = storeMe; % copy the stored row into row u of A
            
            for k = 1:m 
                if k == L
                    A=A;
                else
                A(k,:) = mod( A(k,:) - A(k,i).*A(L,:) ,p);
                end
            end
            l(L) = i;
            L = L+1;
            
            break
           
        end
    end
end

end
    
            
            
    
    
    

