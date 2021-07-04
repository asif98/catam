function [E,Yarray] = EulerMethod (xmax,nmax)

f = @(x,y) -4*y+3*exp(-x);
y = @(x) exp(-x)-exp(-4*x);
h = xmax/nmax;
x = 0;
Yexact = 0;
Y = 0;
Yarray(1) = 0;

for i = 1:nmax
    Yexact = y(x+h);
    Y = Y + h*f(x,Y);
    E = Y - Yexact;
    x = x + h;
    
    fprintf('%.8f %.8f %.8f %.8f \n' ,x, Y, Yexact, E );
    %fprintf('$%.8f$ & $%.8f$ & $%.8f$ \\\\ \n' ,x, Yexact, Y);
    
    Yarray(i+1) = Y;
    
end    
    
end