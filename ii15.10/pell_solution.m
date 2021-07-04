function [Pell,N_Pell] = pell_solution (N,k)

[~,~,~,P,Q,~,V] = cont_frac (N,k);

Pell = zeros(0,3);
N_Pell = zeros(0,3);

for i = 1:k
    if V(i) == 1 && P(i) < 10^15
        Pell = [Pell; i,P(i),Q(i)];
        
    elseif V(i) == -1 && P(i) < 10^15
        N_Pell = [N_Pell; i,P(i),Q(i)];
        
    end
end

