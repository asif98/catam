N = 8;
C = 0.5;

U = diff_num(8,128,0.5);

for m = [ 2^4 2^5 2^6 2^7 ]
    for n = 1:9
        %fprintf('%.3f %.8f %.8f \n' ,(n-1)/N, U(n,m+1), U_a((n-1)/N,m/128,5), abs(U(n,m+1) - U_a((n-1)/N,m/128,5)))
        fprintf( '$%.3f$ & $%.8f$ & $%.8f$ & $%.8f$ \\\\ \n' ,(n-1)/N, U(n,m+1), U_a((n-1)/N,m/128,5), abs(U(n,m+1) - U_a((n-1)/N,m/128,5)))
    end
end
