% Naomi Macias Honti a01282098
% 18 de septiembre 2018
% 30 min.
% Pregunta una ecuacion, dada como handle, un limite inferior y superior, dadas como un vector de dos posiciones, y el numero de puntos a graficar, dado como un escalar. Grafica la grafica dada la informacion. Se ofrece refinar la grafica, volver a ingresar datos.

function [varargout] = grafica()
continuar = true;
handle = input('Ingrese el handle: ');
while(continuar)
    limites = input('Ingrese el vector de limites: ');
    escalar = input('Ingrese el escalar de puntos a graficar: ');
    posiciones = (limites(2)-limites(1))/escalar;
    x = limites(1):posiciones:limites(2);
    y = handle(x);
    varargout{1} = figure();
    varargout{2} = plot(x,y);
    continuar = input('Desea continuar? [true/1 or false/0] ');
end
end
