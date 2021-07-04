B = [2 3 5 7 11 13 17 19 23 29 31 37 41 43 47] ;
k = 8;
p = zeros(1,10^k-1);
p(1) = 1;

for N = 1 : 10^k-1
    i = 1;
    while i < length(B) + 1
        if mod(N,B(i)) == 0
            p(N) = p(N/B(i));
            break
        else
            i = i + 1;
        end
    end
end

s= zeros(1,k);
for j = 1:k
    s(j) = sum(p(10^(j-1):10^j-1)) ;
end
fprintf('%d \n',s)