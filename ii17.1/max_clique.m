ction clique = max_clique( G )

[n,~] = size(G);

if n == 1
    clique = 1 ;
    %chi = 1 ;

else
    neighbour = find(G(n,:));
    
    if isempty(neighbour) == 1 
        v = n;
    else
        G_neighbour = G ( neighbour , neighbour );
        v = [ neighbour(max_clique(G_neighbour)) n];
    end

    u = max_clique( G(1:n-1 , 1:n-1));

    if length(v) > length(u)
        clique = v;
    else
        clique = u ;
    end
    %chi = length(clique);
end
    
end
    
