% Naomi Macias Honti a01282098
% 18 de septiembre 2018
% 1 hr.
% Recibe una funcion, dada como un handle, un limite superior e inferior, dado como un vector, y cantidad maxima de iteraciones, dada como escalar. Se calcula la raiz de la funcion siguiendo las reglas de biseccion. Regresa un vector con la raiz encontrada y otro con los datos probados en las iteraciones.

function [varargout] = biseccion()
handle = input('Ingrese el handle: ');
limites = input('Ingrese el vector de limites: ');
iteraciones = input('Ingrese el escalar de iteraciones maximas: ');
Xi = limites(1);
Xu = limites(2);
contador = 1;
varargout{2}=[];
while(contador <= iteraciones)
    Xr = (Xi+Xu)/2;
    varargout{2} = [[Xi;Xu] varargout{2}];
    if(handle(Xr)*handle(Xi) < 0)
        Xu = Xr;
    elseif(handle(Xr)*handle(Xi) > 0)
        Xi = Xr;
    elseif(handle(Xr)*handle(Xi) == 0)
        varargout{1} = [Xi;Xu];
        contador = iteraciones;
    end
    contador=contador+1;
end
end
