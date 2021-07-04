function U = diff_num(N,M,C)

U = zeros(N+1,M+1);
U(:,1) = 0;
U(1,:) = 1;
U(1,1) = 0.5;

for m = 1:M
    for i = 2:N
        U(i,m+1) = U(i,m) + C*( U(i+1,m) - 2*U(i,m) + U(i-1,m));
    end
      U(N+1,m+1) = U(N+1,m) + C*( U(N,m) - 2*U(N+1,m) + U(N,m));
end
