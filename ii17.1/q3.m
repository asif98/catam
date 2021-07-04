p = 1;
n = 2000;
for k=1:13
    p = p*(1-( 1 - 2^(-k))^(n-k));  
end
fprintf('%f \n',p)