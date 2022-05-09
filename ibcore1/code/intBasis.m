function [R] = intBasis(p,A,B)

C = kerBasis(p,A);
D = kerBasis(p,B);

Q = sumBasis(p,C.',D.');
R = kerBasis(p,Q.');

end

