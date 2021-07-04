fplot(@(T) -dU_b(T,10),[0.01 3],'b')
hold on
fplot(@(T) -dU_a(T,10),[0.01 3],'r')
fplot(@(T) 1/(sqrt(pi*T)),[0.01 3],'g')
hold off

xlabel('Time')
ylabel('Heat flux')
legend('$U_b$','$U_a$','$F$','Interpreter','latex')
        
        
        
        

