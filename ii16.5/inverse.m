function u = inverse(pi)

n = length(pi);
u = 1:n;

if ~isequal( 1:n , sort(pi) )
    error( 'Input must be a permutation')
else
    for i=1:n
        u(pi(i)) = i;
    end
end
end

        
    