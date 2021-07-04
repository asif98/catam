function dU = dU_a(T,k)

dU = 0;
for n = 1:k
    dU = dU + (-2)*exp(-(n-1/2)^2*(pi)^2*T);
end
