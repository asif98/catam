[prime,~,~] = q5 ( 10^5 ) ;
fileID1 = fopen('q6_1.csv','w');
fileID2 = fopen('q6_2.csv','w');
fileID3 = fopen('q6_3.csv','w');
fprintf( fileID1 ,' k , sum(primes) , fermat_pseudo2 , euler_pseudo2 , strong_pseudo2 \n' );
fprintf( fileID2 ,' k , sum(primes) , fermat_pseudo3 , euler_pseudo3 , strong_pseudo3 \n');
fprintf( fileID3 ,' k , sum(primes) , fermat_pseudo23 , euler_pseudo23 , strong_pseudo23 \n');

for k = 5:9
    fermat_pseudo2 = 0 ;
    euler_pseudo2  = 0 ;
    strong_pseudo2 = 0 ;
    
    fermat_pseudo3 = 0 ;
    euler_pseudo3  = 0 ;
    strong_pseudo3 = 0 ;
    
    fermat_pseudo23 = 0 ;
    euler_pseudo23  = 0 ;
    strong_pseudo23 = 0 ;
    
    primes = zeros(1,10^5+1);
    
    for N = 10^k : (10^k + 10^5)
        
        %%%%%%%%%%%%%%%%%%%%% Primality Test %%%%%%%%%%%%%%%%%%%%%%%%%%
        if strong_test(2,N) == 1
            if strong_test(3,N) == 1
                if strong_test(5,N) == 1
                    
                    %%%%%%%%%%%% Test by trial division %%%%%%%%%%%%%
                    p = 2 ;
                    primes(N - 10^k + 1) = 1 ;
                    while p < sqrt(N) + 1
                        if prime(p) == 1
                            if mod(N,p) == 0
                                primes(N - 10^k + 1) = 0 ;
                                break
                            else
                                p = p + 1 ;
                            end
                        else
                            p = p + 1;
                        end
                    end
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                end
            end
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        fermat_pseudo2 = fermat_pseudo2 + fermat_test(2,N) - primes(N - 10^k + 1);
        euler_pseudo2  = euler_pseudo2  + euler_test(2,N) - primes(N - 10^k + 1);
        strong_pseudo2 = strong_pseudo2 + strong_test(2,N) - primes(N - 10^k + 1);
        
        fermat_pseudo3 = fermat_pseudo3 + fermat_test(3,N) - primes(N - 10^k + 1);
        euler_pseudo3  = euler_pseudo3  + euler_test(3,N) - primes(N - 10^k + 1);
        strong_pseudo3 = strong_pseudo3 + strong_test(3,N) - primes(N - 10^k + 1);
        
        fermat_pseudo23 = fermat_pseudo23 + fermat_test(2,N)*fermat_test(3,N) - primes(N - 10^k + 1);
        euler_pseudo23  = euler_pseudo23 + euler_test(2,N)*euler_test(3,N) - primes(N - 10^k + 1);
        strong_pseudo23 = strong_pseudo23 + strong_test(2,N)*strong_test(3,N) - primes(N - 10^k + 1);
    end
    
    fprintf( fileID1 ,'%d, %d, %d, %d, %d \n', k , sum(primes) , fermat_pseudo2 , euler_pseudo2 , strong_pseudo2 );
    fprintf( fileID2 ,'%d, %d, %d, %d, %d \n', k , sum(primes) , fermat_pseudo3 , euler_pseudo3 , strong_pseudo3 );
    fprintf( fileID3 ,'%d, %d, %d, %d, %d \n', k , sum(primes) , fermat_pseudo23 , euler_pseudo23 , strong_pseudo23 );
    
end
