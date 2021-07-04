for n = [ 100 300 500 ]
    
        y1  = chi_square(1,n);
        y5  = chi_square(5,n);
        y40 = chi_square(40,n);
        
        binRange = 0:3.33:70;
        
        hc1 = histcounts(y1,[binRange Inf]);
        hc5 = histcounts(y5,[binRange Inf]);
        hc40 = histcounts(y40,[binRange Inf]);
        
        figure(n)
        bar(binRange,[hc1;hc5;hc40]','BarWidth', 1.2)

        xlabel('Random sample') 
        ylabel('frequency')
        legend('n=1','n=5','n=40','Interpreter','latex')
end
