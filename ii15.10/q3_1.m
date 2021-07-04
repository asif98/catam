k = 15;
N = [ 2 13 503 1000 78343 896633 ] ;
U = zeros(k,length(N));

for i = 1:length(N) 
    [~,~,~,~,~,U(:,i),~] = cont_frac (N(i),k) ;
end

writematrix([N ; U],'q3_1.csv')
    