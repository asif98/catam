n = 100;
mu = 0;

x = normal(mu,n)

x_bar = (sum(x))/n 

xi1 = x_bar - (1.282)/(sqrt(n)) 
xi2 = x_bar + (1.282)/(sqrt(n))

