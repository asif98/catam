fprintf('primes[1900:1999] = ')
for i = 1900:1999
    if prime_td(i) == 1
        fprintf('%d, ',i);
    end
end

fprintf('\n primes[1294268500 : 1294268700] = ')
for j = 1294268500 : 1294268700
    if prime_td(j) == 1
        fprintf('%d, ',j)
    end
end