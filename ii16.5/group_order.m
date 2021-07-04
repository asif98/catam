function [N,X] = group_order ( A )

[m0,n] = size(A);
X = zeros(0,3);
A = reducedgeneratingset(A);
[m,~] = size(A);

if  m == 0
    N = 1;
else
    a = 1;
    while a < n
        if A(:,a) == a*ones(1,n)
            a = a + 1;
        else
            break
        end
    end
    
    [B,p] = stabilizer_gen_set ( a , A );
    N = p * group_order ( B );
    %fprintf('%d, %d, %d \n', m0 ,m , N )
    
end
end

    
             
            