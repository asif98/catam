function U = U_a(x,t,k)

U = 1 ;
for n = 1:k
    U = U + (-2)*exp(-(n-1/2)^2*(pi)^2*t)*sin((n-1/2)*(pi)*x)/((n-1/2)*(pi));
end

