function B = reducedgeneratingset(A)

[m,n] = size(A);

C = zeros(n,n);

B = zeros(0,n);

for i=1:m
    j = 1;
    while j < n
        
        if A(i,j) == j
            j = j+1;
            
        elseif C(j,A(i,j)) == 0
            C(j,A(i,j)) = i;
            B = [B;A(i,:)];
            break
            
        else
            k = C(j,A(i,j));
            A(i,:) = product(inverse(A(k,:)),A(i,:));
            j = j+1;
        end
    end
end

            
            
        



