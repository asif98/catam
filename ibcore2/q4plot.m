for k=0:15
    E1(k+1) = abs(EulerMethod(0.4,2^k));
    E2(k+1) = abs(LFmethod(0.4,2^k));
    E3(k+1) = abs(RK4method(0.4,2^k));
    h(k+1)  = (0.4)/(2^k);
    
 %fprintf('%d %.8f %.8f %.8f %.8f \n' ,k, E1(k+1), E2(k+1), E3(k+1) );
 fprintf('$%d$ & $%.8f$ & $%.8f$ & $%.16f$ \\\\ \n' ,k, E1(k+1), E2(k+1), E3(k+1) );
end


figure
loglog(h,E1,h,E2,h,E3)
grid on
legend('Eluer method','LFmethod','RK4 method','Location','southeast')