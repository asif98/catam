function [y] = analyticsol (gamma,omega)

delta = 0;
Omega = 1;
a = 1;

rho = -(gamma)/2;
sigma = sqrt((Omega)^2-(rho)^2);
U = (a*(Omega^2-omega^2))/((Omega^2-omega^2)^2+(gamma*omega)^2);
V = (-a*gamma*omega)/((Omega^2-omega^2)^2+(gamma*omega)^2);
P = -V;
Q = (V*rho-U*omega)/(sigma);

y = @(t) exp(t*rho)*(P*cos(t*sigma)+Q*sin(t*sigma)) + U*sin(t*omega) + V*cos(t*omega);

