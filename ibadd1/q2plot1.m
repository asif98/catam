for n = 1:9
    X = 0.125*(n-1);
    T = 0.25;
    %fprintf( '%.3f %.8f %.8f %.8f \n', X, U_b(X,T,10), U_a(X,T,10), erfc(X/(2*sqrt(T))))
    fprintf( '$%.3f$ & $%.8f$ & $%.8f$ & $%.8f$ \\\\ \n', X, U_b(X,T,10), U_a(X,T,10), erfc(X/(2*sqrt(T))))
end
