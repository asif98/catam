function [chi,colours] = greedy_alg ( G )

[n,~] = size(G);
colours = zeros(1,n);
colours(1) = 1;

for i = 2:n
    colours_taken = G(i,1:(i-1)) .* colours(1:i-1) ;
    c = 1 ;
    while c < i
        if any(colours_taken == c)
            c = c + 1;
        else
            break
        end
    end
    
    colours(i) = c;
end
chi = max(colours);
end

