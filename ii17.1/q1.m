function [chi_inc,chi_dec,chi_min,chi_rand] = q1 ( G )

[n,~] = size(G);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

G_inc = G ;

for i = 1:n-1
    for j = i+1:n
        if sum(G_inc(i,:)) > sum(G_inc(j,:))
            G_inc(:,[i j]) = G_inc(:,[j i]) ;
            G_inc([i j],:) = G_inc([j i],:) ;
        end
    end
end

chi_inc = greedy_alg(G_inc);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

G_dec = zeros(n,n);

for i = 1:n
    for j = 1:n
        G_dec(i,j) = G_inc(n+1-j,n+1-i);
    end
end

chi_dec = greedy_alg(G_dec);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

G_min = G;

for i = 1:n
    for j = 1:n+1-i
        if sum(G_min(n+1-i , 1:n+1-i)) > sum(G_min(j , 1:n+1-i))
            G_min(:,[n+1-i j]) = G_min(:,[j n+1-i]) ;
            G_min([n+1-i j],:) = G_min([j n+1-i],:) ;
        end
    end
end

chi_min = greedy_alg(G_min);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chi_rand = greedy_alg(G);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      
end


