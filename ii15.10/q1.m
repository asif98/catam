B = [2 3 5 7 11 13 17 19 23 29 31 37 41 43 47];

for d = 1:9
    s = 0 ;
    for i = 10^(d-1) : 10^d - 1
        s = s + prod_primes(B,i) ;
    end
    fprintf('%d %4.2f \n', s, s/(9*10^(d-1)))
end