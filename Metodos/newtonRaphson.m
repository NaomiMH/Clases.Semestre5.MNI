%
% Naomi Macias Honti a01282098
% 18 de octubre 2018
% 1 hora.
%

function [varargout] = newtonRaphson()
fprintf("\nSe calcula X con:\nX = Xp-(handle(Xp)/handleD(Xp))");
fprintf("\nSe calcula Ea con:\nEa = abs((X-Xp)/X)*100");
fprintf("\nSe encuentra raiz cuando X=Xp");
syms x;
handle = input('\nIngrese la funcion sin handle: ');
handleD = diff(handle);
handle = matlabFunction(handle);
handleD = matlabFunction(handleD);
Xp = input('Ingrese el escalar del valor inicial: ');
continuar = true;
encontrado = false;
while(continuar)
    iteraciones = input('Ingrese el escalar de iteraciones maximas: ');
    contador = 1;
    Ea = 0;
    varargout{2}=[0;Xp;0];
    while(contador <= iteraciones)
        X = Xp-(handle(Xp)/handleD(Xp));
        Ea = abs((X-Xp)/X)*100;
        varargout{2} = [[contador;X;Ea] varargout{2}];
        if(round(X,4)==round(Xp,4))
            varargout{1} = [X;Ea];
            contador = iteraciones;
            encontrado = true;
        end
        Xp = X;
        contador=contador+1;
    end
    fprintf("\n");
    if(encontrado)
        fprintf('Se encontro una raiz en %.4f',X);
        fprintf('\nCon un valor aproximado de error de %.2f',Ea);
        continuar = false;
        fprintf('\n');
    else
        fprintf('Raiz aproximada en %.4f',X);
        fprintf('\nCon un valor aproximado de error de %.2f',Ea);
        continuar = input('\nDesea refinar? [true/1 o false/0] ');
    end
end
end
