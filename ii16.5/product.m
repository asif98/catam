function u = product( pi_1,pi_2)

n = length(pi_1);

if length(pi_2) ~= n
    error('Permutations have different sizes')

elseif ~isequal( 1:n , sort(pi_1) ) 
    error( 'Input 1 must be a permutation')

elseif ~isequal( 1:n , sort(pi_2) ) 
    error( 'Input 2 must be a permutation')

else 
    u = 1:n ;
    for i=1:n
        u(i) = pi_1(pi_2(i));
    end
end
end

        
       
    



