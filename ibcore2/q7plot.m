y11 = analyticsol (0.25,1);
y13 = analyticsol (1.00,1);

y22 = analyticsol (0.50,2);
y24 = analyticsol (1.90,2);

Y11 = RK4method2( 0.25,0,1,1,1,40,40);
Y13 = RK4method2( 1.00,0,1,1,1,40,40);

Y22 = RK4method2( 0.50,0,1,2,1,40,40);
Y24 = RK4method2( 1.90,0,1,2,1,40,40);

x = linspace(1.0,40,40);

figure(11)

plot(x,Y11)
hold on
fplot(@(y) y11(y),[0 40],'r')
hold off


figure(13)

plot(x,Y13)
hold on
fplot(@(y) y13(y),[0 40],'r')
hold off


figure(22)

plot(x,Y22)
hold on
fplot(@(y) y22(y),[0 40],'r')
hold off


figure(24)

plot(x,Y24)
hold on
fplot(@(y) y24(y),[0 40],'r')
hold off




