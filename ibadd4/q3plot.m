theta_0 = 1.2;
hold on
for n = [ 25 50 100 ]
    
    x = exp_rand( n , theta_0);

    m_0 = (log(2))/(theta_0)

    m_n = (log(2))/(sum(x)/n)

    m = [ 0.1 : 0.1: 10];
    l_n =  n*log(log(2)) - n.*log(m) - log(2)*(sum(x))./m;

  
    
    plot( m, l_n)
    xlabel('m') 
    ylabel('l_n(m)')
    
end

hold off
legend('25','50','100')