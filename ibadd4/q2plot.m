n = 6;
theta_0 = 1.2;

x = exp_rand( n , theta_0);

m_0 = (log(2))/(theta_0)

m_n = (log(2))/(sum(x)/n)

m = [ 0.1 : 0.1: 6];
l_n =  n*log(log(2)) - n.*log(m) - log(2)*(sum(x))./m;

figure
plot( m, l_n,'b')
xlabel('m') 
ylabel('l_n(m)')