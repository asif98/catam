h1 = 0.4;
h2 = 0.2;
h3 = 0.1;

Z1 = RK4method2(1,0,1,sqrt(3),1,10,25);
Z2 = RK4method2(1,0,1,sqrt(3),1,10,50);
Z3 = RK4method2(1,0,1,sqrt(3),1,10,100);

y = analyticsol (1,sqrt(3))

%y = @(t) (1/7)*(5*exp(-0.5*t)*sin(sqrt(3)*t/2) - 2*sin(sqrt(3)*t) + sqrt(3)*exp(-0.5*t)*cos(sqrt(3)*t/2) - sqrt(3)*cos(sqrt(3)*t));

for i=1:25
    E1(i) = Z1(i) - y(i*h1);
    %fprintf('%.2f %.8f %.8f %.8f \n' ,i*h1, Z1(i), y(i*h1), E1(i) );
    fprintf('$%.2f$ & $%.8f$ & $%.8f$ & $%.8f$  \\\\ \n' ,i*h1, Z1(i), y(i*h1), E1(i) );
end

for i=1:50
    E2(i) = Z2(i) - y(i*h2);
    %fprintf('%.2f %.8f %.8f %.8f \n' ,i*h2, Z2(i), y(i*h2), E2(i) );
    fprintf('$%.2f$ & $%.8f$ & $%.8f$ & $%.8f$  \\\\ \n' ,i*h2, Z2(i), y(i*h2), E2(i) );
end

for i=1:100
    E3(i) = Z3(i) - y(i*h3);
    %fprintf('%.2f %.8f %.8f %.8f \n' ,i*h3, Z3(i), y(i*h3), E3(i) );
    fprintf('$%.2f$ & $%.8f$ & $%.8f$ & $%.8f$  \\\\ \n' ,i*h3, Z3(i), y(i*h3), E3(i) );
end


