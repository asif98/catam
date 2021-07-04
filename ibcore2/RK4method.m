function [E,Yarray] = RK4method (xmax,nmax)

f = @(x,y) -4*y+3*exp(-x);
y = @(x) exp(-x)-exp(-4*x);
h = xmax/nmax;
x = 0;
Yexact = 0;
Y = 0;
Yarray(1) = 0;
for i = 1:nmax
    Yexact = y(x+h);
    k1 = h*f(x,Y);
    k2 = h*f(x+h/2,Y+(k1)/2);
    k3 = h*f(x+h/2,Y+(k2)/2);
    k4 = h*f(x+h,Y+k3);
    
    Y = Y + (k1+2*k2+2*k3+k4)/6;
    E = Y - Yexact;
    x = x + h;
    
    fprintf('%.8f %.8f %.8f %.8f \n' ,x, Y, Yexact, E );
    %fprintf('$%.8f$ & $%.8f$ & $%.8f$ & $%.8f$  \\\\ \n' ,x, Yexact, Y, E );
    Yarray(i+1) = Y;
end

end
    

