function [prime,pseudo2,abs_pseudo] = q3 ( M )

prime = zeros(1,M);
prime(2) = 1;
pseudo2 = zeros(1,M);
abs_pseudo = zeros(1,M);

for N = 3:M
    if fermat_test(2,N) == 1
        prime(N) = 1 ;
        
        p = 2;
        while p < sqrt(N)+1
            if prime(p) == 1
                if mod(N,p) == 0
                    prime(N) = 0 ;
                    pseudo2(N) = 1 ;
                    
                    %%%%%%%%%%% Test for absolute pseudprime %%%%%%%%%%%%
                    abs_pseudo(N) = 1;
                    q = 3;
                    while q < sqrt(N)
                        if prime(q) == 1
                            if mod(N,q) ~= 0
                                if fermat_test(q,N) == 0
                                    abs_pseudo(N) = 0;
                                    break
                                else
                                    q = q+1 ;
                                end
                            else
                                q = q+1 ;
                            end
                        else
                            q = q+1;
                        end
                    end
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    
                    break
                else
                    p = p+1;
                end
            else
                p = p+1;
            end   
        end
    end
end

end
