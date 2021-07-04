function [Y] = RK4method2(gamma,delta,Omega,omega,a,tmax,nmax)


f1 = @(t,y1,y2) (y2);
f2 = @(t,y1,y2) -(gamma)*(y2) - (delta)^3*(y1)^2*(y2) - (Omega)^2*(y1) + a*sin((omega)*t);

%y = @(t) (1/7)*(5*exp(-0.5*t)*sin(sqrt(3)*t/2) - 2*sin(sqrt(3)*t) + sqrt(3)*exp(-0.5*t)*cos(sqrt(3)*t/2) - sqrt(3)*cos(sqrt(3)*t));                   

h = tmax/nmax;
t = 0;
Y1 = 0;
Y2 = 0;

for i=1:nmax
    
    %Yexact = y(t+h);
    
    k1 = h*f1(t,Y1,Y2);
    m1 = h*f2(t,Y1,Y2);
    
    k2 = h*f1(t+h/2,Y1+(k1)/2,Y2+(m1)/2);
    m2 = h*f2(t+h/2,Y1+(k1)/2,Y2+(m1)/2);
    
    k3 = h*f1(t+h/2,Y1+(k2)/2,Y2+(m2)/2);
    m3 = h*f2(t+h/2,Y1+(k2)/2,Y2+(m2)/2);
    
    k4 = h*f1(t+h,Y1+k3,Y2+m3);
    m4 = h*f2(t+h,Y1+k3,Y2+m3);
    
    Y1 = Y1 + (k1+2*k2+2*k3+k4)/6;
    Y2 = Y2 + (m1+2*m2+2*m3+m4)/6;
    
    Y(i) = Y1;
    
    t = t + h;
    
end

end
