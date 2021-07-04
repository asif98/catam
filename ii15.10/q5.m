N = [1449774329 3333999913 7686335197 ];
k = 20;
A = zeros(k,6);
for i = 1:3
    [ PmodN , P_squaremodN ] = cont_frac2 (N(i),k);
    A(:,2*i-1) = PmodN ;
    A(:,2*i) = P_squaremodN ;
end
writematrix(A,'q5.csv')