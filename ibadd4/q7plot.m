theta_0 = 2.2;
hold on
for n = [10, 30, 50]
    [x , theta_mle ] = gamma_2(n, theta_0) ;
    
    theta_mle
    
    t = 0.1 : 0.1 : 6;
    l_n = 2*n*log(t) + sum(log(t)) - t.*sum(x);
    
    
    plot(t,l_n)
    xlabel('$\theta$','Interpreter','latex') 
    ylabel('$l_n(\theta)$','Interpreter','latex')
end


hold off
legend('10','30','50')