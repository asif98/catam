function dU = dU_b(T,k)

dU = -1 ;
for n = 1:k
    dU = dU + (-2)*exp(-(n^2)*(pi)^2*T);
end
