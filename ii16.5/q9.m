fileID1 = fopen('q9.csv','w');
fprintf(fileID1,'n,p \n') ;

for n = [ 3:14]
    A = zeros(200,n);
    n_fact = factorial(n) ;
    for i = 1:200
        A(i,:) = randperm(n) ;
    end
    order = zeros(1,100) ;
    p = 0;
    for i = 1:100
        if group_order( A(2*i-1:2*i , :)) == n_fact 
            p = p + 1 ;
        end
    end
    fprintf(fileID1,' %d, %f \n',n,p/100) ;
end

    