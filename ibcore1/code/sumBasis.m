function [Z] = sumBasis(p,A,B)

U = Basis(p,A);
W = Basis(p,B);

Y = union(U.',W.','rows');
Z = Basis(p,Y);

end






