function y = chi_square(m,n)

for i = 1:m
    x(i,:) = normal(0,n);
end

for j = 1:n
    y(j) = sum(x(:,j).^2);
end
