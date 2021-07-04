function [p,x] = gaussian_elim ( A )

A = mod(A,2);

[m,n] = size(A);
x = zeros(1,n);
p = 0;

if  n == 1
    if  A == 0
        x = 1;
        p = 1;
    end
    
elseif m == 1
    t = sum(A) ;
    if  t == 0
        p = 0;
    elseif t == 1
        p = 1;
        if A(1,n) == 1
            x(n-1) = 1;
        else
            x(n) = 1;
        end
    else
        p = 1;
        x(n) = 1;
        s = find(A(1,:));
        x(s(t)) = 1;
        x(s(t-1)) = 1;
    end
    
elseif sum(A(:,1)) == 0
    x(1) = 1;
    [~,x(2:n)] = gaussian_elim ( A(:, 2:n) );
    p = 1;
      
else
    i = 1;
    while A(i,1) == 0
        i = i + 1 ;
    end
    A([1 i], :) = A([i 1], :);

    for k = 2:m 
            A(k,:) = mod(A(k,1)*A(1,:) + A(k,:) , 2) ;
    end
    
    [p,y] = gaussian_elim ( A(2:m,2:n) ) ;
    x(1) = dot(A(1,2:n) , y );
    x = [ mod(x(1),2)  y ] ;
end
end
    
    