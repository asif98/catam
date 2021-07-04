fileID1 = fopen('s1.csv','w');
fprintf(fileID1, ' clique , greedy \n');
for i=1:10
    G = random_k_graph(7,60,0.5);
    fprintf(fileID1,' %d, %d \n', length(max_clique(G)) , greedy_alg(G) );
end


fileID2 = fopen('s2.csv','w');
fprintf(fileID2, ' clique , greedy \n');
for i=1:10
    G = random_k_graph(13,60,0.7);
    fprintf(fileID2,' %d, %d \n', length(max_clique(G)) , greedy_alg(G) );
end