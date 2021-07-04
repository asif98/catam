for uv = [1900 1294268500 ; 1999 1294268700 ]
    u = uv(1);
    v = uv(2);
    
    A = zeros(13,v-u+1);
    primes = ones(1,v-u+1);
    
    for a = 2:13
        for N = u:v    
            A(a,N-u+1) = fermat_test(a,N) ;
            primes(N-u+1) = primes(N-u+1) * fermat_test(a,N) ;       
        end  
    end
    
    fprintf('\n primes[%d,%d] = ',u,v)
    fprintf('%d, ',find(primes)-1+u )
    
    for a = 2:13
        fprintf('\n pseudoprime(%d) = ',a)
        fprintf('%d, ', find( A(a,:) - primes )-1+u )
    end

end
