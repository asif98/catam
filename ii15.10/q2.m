k = 15;
A = zeros(50,k);
max_r = zeros(50,1);
max_s = zeros(50,1);

fileID1 = fopen('q2.csv','w');
fprintf( fileID1 ,'N ; Partial quotients ; max r ; max s \n' );

for N = 1 : 50
    
    [A, max_r, max_s,~,~,~,~] = cont_frac (N,k);
    
    fprintf( fileID1 , '%d;' , N );
    fprintf( fileID1 , '%d,' , A );
    fprintf( fileID1 , ';%d;%d \n', max_r , max_s );
end

