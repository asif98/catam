fileID1 = fopen('p1.csv','w');
fprintf(fileID1, 'inc, dec, min, rand \n');
for i=1:10
    G = random_graph(60,0.5);
    [chi_inc,chi_dec,chi_min,chi_rand] = q1 ( G );
    fprintf(fileID1,'%d, %d, %d, %d \n', chi_inc, chi_dec, chi_min, chi_rand );
end

fileID2 = fopen('p2.csv','w');
fprintf(fileID2, 'inc, dec, min, rand \n');
for i=1:10
    G = random_k_graph(3,60,0.75);
    [chi_inc,chi_dec,chi_min,chi_rand] = q1 ( G );
    fprintf(fileID2,'%d, %d, %d, %d \n', chi_inc, chi_dec, chi_min, chi_rand );
end