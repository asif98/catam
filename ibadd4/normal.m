function x = normal(mu,n)

a = rand(n,1);
b = rand(n,1);

phi = 2*pi.*a;
v = -2*log(1-b);

x = mu + sqrt(v).*cos(phi);
