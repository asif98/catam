function [x, theta_mle] = gamma_2(n,theta_0)

y1 = exp_rand(n,theta_0);
y2 = exp_rand(n,theta_0);

x = y1 + y2;

theta_mle = (2*n)/(sum(x));