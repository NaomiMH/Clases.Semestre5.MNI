% Naomi Macias Honti a01282098
% 18 de septiembre 2018
% 1 hr.
% Recibe una funcion, dada como un handle, un limite superior e inferior, dado como un vector, y cantidad maxima de iteraciones, dada como escalar. Se calcula la raiz de la funcion siguiendo las reglas de biseccion. Pregunta si se quiere refinar, permitiendo volver a ingresar las iteraciones permitidas. En caso contrario, regresa un vector con la raiz encontrada y otro con los datos probados en las iteraciones.

function [varargout] = biseccion()
handle = input('Ingrese el handle: ');
limites = input('Ingrese el vector de limites: ');
Xi = limites(1);
Xu = limites(2);
continuar = true;
while(continuar)
    iteraciones = input('Ingrese el escalar de iteraciones maximas: ');
    contador = 1;
    Ea = 0;
    varargout{2}=[];
    while(contador <= iteraciones)
        Xr = (Xi+Xu)/2;
        if(contador>1)
            Ea = abs((Xr-Ea)/Xr)*100;
        end
        varargout{2} = [[Xi;Xu;Ea] varargout{2}];
        if(round(handle(Xr),4)== 0)
            varargout{1} = [Xr;Ea];
            contador = iteraciones;
        elseif(handle(Xr)*handle(Xi) < 0)
            Xu = Xr;
        elseif(handle(Xr)*handle(Xi) > 0)
            Xi = Xr;
        end
        Ea = Xr;
        contador=contador+1;
    end
    continuar = input('Desea refinar? [true/1 o false/0] ');
end
end
