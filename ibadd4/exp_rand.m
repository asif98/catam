function [x] = exp_rand( n , theta_0)

u = rand(n,1) ;

x = -(log(1 - u))/(theta_0);