figure
x = linspace(0,4,11);

[E1,Yarray1] = EulerMethod (4,10);
[E2,Yarray2] = RK4method(4,10);

plot(x,Yarray1,x,Yarray2)

hold on 
x = linspace(0,4,100); 
y3 = exp(-x)-exp(-4*x);
plot(x,y3)
hold off

legend({'Eluer method','RK4 method','$e^{-x}-e^{-4x}$'},'Interpreter','latex')