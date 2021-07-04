k = 80;
fileID1 = fopen('q3_2.csv','w');            

for N = 501 : 550
    %if N > floor(sqrt(N))^2
        [Pell,~] = pell_solution (N,k);
        
        fprintf(fileID1,'%d; ',N) ;
        for i = 1 : size(Pell,1)
            fprintf(fileID1,'(%d,%d),', Pell(i,2), Pell(i,3)) ;
        end
        fprintf(fileID1,'\n') ;
    %end
end


fileID1 = fopen('q3_6.csv','w');      
for N = 1 : 100
    %if N > floor(sqrt(N))^2
        [Pell,~] = pell_solution (N,k);
        
        fprintf(fileID1,'%d; ',N) ;
        for i = 1 : min(8,size(Pell,1))
            fprintf(fileID1,'(%d,%d),', Pell(i,2), Pell(i,3)) ;
        end
        fprintf(fileID1,'\n') ;
    %end
end