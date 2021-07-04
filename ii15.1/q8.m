fileID1 = fopen('q8.csv','w');
fprintf(fileID1,'  t, x, x+y, (100*x)/y \n');
k = 17;
[prime,~,~] = q5 ( 2^k ) ;
for t = 1:5
    for j = 1:3
        strong_prime = ones(1,2^(k-1));
        
        x = 0;
        y = 0;
        
        for N = 2.*( 2^(k-2) : 2^(k-1)-1 ) + 1
            if prime(N) == 1
                y = y + 1 ;
            else
                a = randperm(2^(k-1)-1,t);
                for i = 1:t
                    if strong_test(a(i),N) == 0
                        strong_prime(N-2^(k-1)+1) = 0;
                        break
                    end
                end
                x = x + strong_prime(N-2^(k-1)+1) ;  
            end
        end
        fprintf(fileID1,' %d, %d, %d, %f \n', t, x, x+y, (100*x)/y);
    end
end
