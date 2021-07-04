for T = [ 0.0625 0.125 0.25 0.5 1.0 2.0 ]
    
        figure(1024*T)
        
        fplot(@(X) U_b(X,T,10),[0 1],'b')
        hold on
        fplot(@(X) U_a(X,T,10),[0 1],'r')
        fplot(@(X) erfc(X/(2*sqrt(T))),[0 1],'g')
        hold off
        xlabel('Length')
        ylabel('Temperature')
        legend('$U_b$','$U_a$','$F$','Interpreter','latex')
end

        
        