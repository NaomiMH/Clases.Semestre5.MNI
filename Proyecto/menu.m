%
% Naomi Macias Honti a01282098
% 5 de octubre 2018
% Metodos/algoritmos que se pueden implementar.
%

function menu()
fprintf('\n');
fprintf('Abriendo menu de algoritmos\n');
fprintf('Algoritmos disponibles:\n');
fprintf('\n');
fprintf('\tSolucion de ecuaciones no lineales\n');
fprintf('\t\t1 = Biseccion\n');
fprintf('\t\t2 = Regula-Falsi\n');
fprintf('\t\t3 = Iteracion Simple de Punto Fijo\n');
fprintf('\t\t4 = Newton-Raphson\n');
fprintf('\n');
fprintf('\tSolucion de sistemas de ecuaciones no lineales\n');
fprintf('\t\t5 = Gauss-Seidel\n');
fprintf('\t\t6 = Newton-Raphson\n');
fprintf('\n');
fprintf('\tIntegracion Numerica\n');
fprintf('\t\t7 = Regla Trapexoidal multiple\n');
fprintf('\t\t8 = Regla de Simpson 3/8 multiple\n');
fprintf('\n');
fprintf('\tSolucion de sistemas de ecuaciones diferenciales\n');
fprintf('\t\t9 = Metodo de Euler\n');
fprintf('\t\t10 = Metodo clasico de Runge-Kutta (cuarto orden)\n');
fprintf('\n');
end
