%
% Naomi Macias Honti a01282098
% 5 de octubre 2018
%

function [varargout] = biseccion()
handle = input('Ingrese el handle: ');
limites = input('Ingrese el vector de limites: ');
Xi = limites(1);
Xu = limites(2);
continuar = true;
encontrado = false;
while(continuar)
    iteraciones = input('Ingrese el escalar de iteraciones maximas: ');
    fprintf('\n');
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
            encontrado = true;
        elseif(handle(Xr)*handle(Xi) < 0)
            Xu = Xr;
        elseif(handle(Xr)*handle(Xi) > 0)
            Xi = Xr;
        end
        Ea = Xr;
        contador=contador+1;
    end
    if(encontrado)
        fprintf('Se encontro una raiz en %\n',Xr);
        fprintf('Con un valor aproximado de error de %\n',Ea);
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
