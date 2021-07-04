function G = random_graph(n,p)

A = rand(n,n);
G = zeros(n,n);
for i = 1:n
    for j = 1:i-1
        if A(i,j) < p
            G(i,j) = 1;
            G(j,i) = 1;
        end
    end
end
end

        