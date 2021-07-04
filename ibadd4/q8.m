theta_0 = 2.2;
N = 200;


for i = 1:N
    [u , theta_mle10(i) ] = gamma_2(10, theta_0);
    [v , theta_mle50(i) ] = gamma_2(50, theta_0);
end


binRange = 0:0.25:5;
hcx = histcounts(theta_mle10,[binRange Inf]);
hcy = histcounts(theta_mle50,[binRange Inf]);

figure(1)
bar(binRange,hcx')
xlabel('$\hat{\theta}_n$','Interpreter','latex') 
ylabel('frequency')

figure(2)
bar(binRange,[hcx;hcy]')

xlabel('$\hat{\theta}_n$','Interpreter','latex') 
ylabel('frequency')
legend('n=10','n=50','Interpreter','latex')