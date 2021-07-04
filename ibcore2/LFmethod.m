function [E] = LFmethod (xmax,nmax)

f = @(x,y) -4*y+3*exp(-x);
y = @(x) exp(-x)-exp(-4*x);
h = xmax/nmax;
Yp = 0;
Ep = 0;
Y = Yp + h*f(0,Yp);
Yexact = y(h);
E = Y - Yexact;
x = h;

fprintf('%.8f %.8f %.8f %.8f %.8f \n' ,x, Y, Yexact, E, (log(abs(E))-log(abs(Ep)))/h );


for i=1:nmax-1
    
    Yexact = y(x+h);
    storeme = Y;
    Y = Yp + 2*h*f(x,Y);
    Yp = storeme;
    Ep = E;
    E = Y - Yexact;
    x = x + h;
    
    fprintf('%.8f %.8f %.8f %.8f %.8f \n' ,x, Y, Yexact, E, (log(abs(E))-log(abs(Ep)))/h );   
    
end
    %fprintf('$%.8f$ & $%.8f$ & $%.8f$ & $%.8f$ & $%.8f$ \\\\ \n' ,x, Y, Yexact, E, (log(E)-log(Ep))/h );
end
    
    

