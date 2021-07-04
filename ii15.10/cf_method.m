function [s,t] = cf_method(N,k)

B = [-1 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 ] ;

r = length(B);
[ PmodN , P_squaremodN ] = cont_frac2 (N,k);

for i = 1:k
    if P_squaremodN(i) > N/2
        P_squaremodN(i) = -(N - P_squaremodN(i)) ;
    end
end

B_number = [];
for i = 1:k
    if prod_primes(B, P_squaremodN(i) ) == 1
        B_number = [B_number,i];
    end
end

fprintf('B_number = ')
fprintf('%d, ',B_number)
fprintf('\n')

for j=2:length(B_number)
    A = zeros(r,j);
    for i = 1:j
        [~,A(:,i)] = prod_primes(B, P_squaremodN(B_number(i)));
    end
    
    %[~,b] = prod_primes(B, P_squaremodN(v(j+1)));
    
    [~,x] = gaussian_elim ( A );
    
    if x(j) == 1
        
        y = zeros(r,1);
        for i = 1:j
            if x(i) == 1
                y = y + A(:,i)/2;
            end
        end
            
        C_prod = 1;
        for l = 1:r
            C_prod = mod_mult(C_prod, B(l)^(y(l)) ,N);
        end
        
        P_prod = 1;
        for i = 1:j
            if x(i) == 1
                P_prod = mod_mult(P_prod, PmodN(B_number(i)), N);
            end
        end
        
        n = B_number(find(x)) ;
        fprintf('\n I = ') 
        fprintf('%d, ',n)
        fprintf('\n x = %d, y = %d \n', P_prod, C_prod);

        if P_prod ~= C_prod && P_prod + C_prod ~= N
            
            s = gcd(P_prod + C_prod,N);
            t = N/s;
            fprintf('\n N = %d * %d', s , t)

            return
        else
            
        end
    end
end
end
    