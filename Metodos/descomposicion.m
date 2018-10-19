%
% Naomi Macias Honti a01282098
% 18 de octubre 2018
% 30 min.
%

function [varargout] = descomposicion()
fprintf("\nResolviendo [A][X]=[B]");
fprintf("\nPasos:");
fprintf("\nSe calcula lu: [L,U]=lu(A)");
fprintf("\nSe calcula D= L^(-1)*B");
fprintf("\nSe calcula X= U^(-1)*D");
A = input('\nIngresa el vector de A:\n');
B = input('\nIngresa el vector de B:\n');
[L U]=lu(A);
D = L\B;
varargout{2} = D;
varargout{1} = U\D;
end
