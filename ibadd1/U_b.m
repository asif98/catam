function U = U_b(x,t,k)

U = 1 - x;

for n = 1:k
    U = U + (-2)*exp(-(n^2)*(pi)^2*t)*sin(n*(pi)*x)/(n*(pi));
end
