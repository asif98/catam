n = 100;
mu = 0;

for j=1:25
    
    x = normal(mu,n);

    x_bar = (sum(x))/n ;

    xi1 = x_bar - (1.282)/(sqrt(n)) ;
    xi2 = x_bar + (1.282)/(sqrt(n));
    
    if xi1 <= mu && mu <= xi2
        y = 1;
    else 
        y = 0;
    end
    
    %fprintf('%4.2f   %4.2f   %4.2f   %d \n', x_bar, xi1, xi2, y);
    fprintf('$%4.2f$ & $%4.2f$ & $%4.2f$ & $%d$ \\\\ \n', x_bar, xi1, xi2, y);
end

