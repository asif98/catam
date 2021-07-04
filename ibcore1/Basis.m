function [U] = Basis(p,A)

C = kerBasis(p,A);
U = kerBasis(p,C.');

end
