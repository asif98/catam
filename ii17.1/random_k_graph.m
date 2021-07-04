function G = random_k_graph ( k,n,p)

G = random_graph(n,p);

for i = 1:n
    for j = 1:i-1
        if mod(i-j,k) == 0
            G(i,j) = 0;
            G(j,i) = 0;
        end
    end
end
end

