n=100;
mu = 0;
    
A = rand(n,1);
B = rand(n,1);

phi = 2*pi.*A;
V = -2*log(1-B);

X = mu + sqrt(V).*cos(phi);

x_ = (sum(X))/n 

xi = [x_ - (1.282)/(sqrt(n)) , x_ + (1.282)/(sqrt(n))]