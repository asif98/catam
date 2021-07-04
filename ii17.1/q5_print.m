fileID1 = fopen('r1.csv','w');
fprintf(fileID1, ' greedy , indep \n');
fileID2 = fopen('r2.csv','w');
fprintf(fileID2, ' greedy , indep \n');
fileID3 = fopen('r3.csv','w');
fprintf(fileID3, ' greedy , indep \n');

for i=1:10
    G1 = random_k_graph(7,60,0.5);
    fprintf(fileID1,' %d, %d \n', greedy_alg(G1) , colouring_indep(G1) );
    
    G2 = random_k_graph(7,60,0.4);
    fprintf(fileID2,' %d, %d \n', greedy_alg(G2) , colouring_indep(G2) );
    
    G3 = random_k_graph(7,60,0.6);
    fprintf(fileID3,' %d, %d \n', greedy_alg(G3) , colouring_indep(G3) );
end
