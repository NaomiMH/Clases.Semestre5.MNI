%
% Naomi Macias Honti a01282098
% 18 de octubre 2018
% 1 hora.
%

function [varargout] = falsaPosicion()
fprintf("\nSe calcula Xr con:\nXr = Xu-((handle(Xu)*(Xi-Xu))/(handle(Xi)-handle(Xu)))");
fprintf("\nSe calcula Ea con:\nEa = abs((Xr-Ea)/Xr)*100");
handle = input('Ingrese el handle: ');
limites = input('Ingrese el vector de limites: ');
Xi = limites(1);
Xu = limites(2);
continuar = true;
encontrado = false;
while(continuar)
    iteraciones = input('Ingrese el escalar de iteraciones maximas: ');
    contador = 1;
    Ea = 0;
    varargout{2}=[];
    while(contador <= iteraciones)
        Xr = Xu-((handle(Xu)*(Xi-Xu))/(handle(Xi)-handle(Xu)));
        if(contador>1)
        Ea = abs((Xr-Xrp)/Xr)*100;
        end
        varargout{2} = [[Xi;Xr;Xu;Ea] varargout{2}];
        if(round(handle(Xr),4)== 0)
            varargout{1} = [Xr;Ea];
            contador = iteraciones;
            encontrado = true;
        elseif(handle(Xr)*handle(Xi) < 0)
            fprintf("\nXu toma el valor de Xr");
            Xu = Xr;
        elseif(handle(Xr)*handle(Xi) > 0)
            fprintf("\nXi toma el valor de Xr");
            Xi = Xr;
        end
        Xrp = Xr;
        contador=contador+1;
    end
    fprintf("\n");
    if(encontrado)
        fprintf('Se encontro una raiz en %.4f\n',Xr);
        fprintf('Con un valor aproximado de error de %.2f\n',Ea);
        continuar = false;
        fprintf('\n');
    else
        if(Xi==Xu)
            fprintf('No hay una raiz entre los limites recibidos');
            continuar = false;
            fprintf('\n');
        else
            fprintf('Aun no se ha encontrado una raiz\n');
            continuar = input('Desea refinar? [true/1 o false/0] ');
            fprintf('\n');
        end
    end
end
end
