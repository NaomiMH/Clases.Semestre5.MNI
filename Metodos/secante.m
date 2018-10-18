%
% Naomi Macias Honti a01282098
% 18 de octubre 2018
% 30 min.
%

function [varargout] = secante()
fprintf("\nSe calcula X con:\nX = Xp-((handle(Xp)*(Xp-Xpp))/(handle(Xp)-handle(Xpp)))");
fprintf("\nSe calcula Ea con:\nEa = abs((X-Xp)/X)*100");
fprintf("\nSe encuentra raiz cuando X=Xp");
handle = input('\nIngrese el handle: ');
limites = input('Ingrese el vector de los valores iniciales: (en orden X-1 x0) ');
Xpp=limites(1);
Xp=limites(2);
continuar = true;
encontrado = false;
while(continuar)
    iteraciones = input('Ingrese el escalar de iteraciones maximas: ');
    contador = 1;
    Ea = 0;
    varargout{2}=[0;Xp;0];
    while(contador <= iteraciones)
        X = Xp-((handle(Xp)*(Xp-Xpp))/(handle(Xp)-handle(Xpp)));
        Ea = abs((X-Xp)/X)*100;
        varargout{2} = [[contador;X;Ea] varargout{2}];
        if(round(X,4)==round(Xp,4))
            varargout{1} = [X;Ea];
            contador = iteraciones;
            encontrado = true;
        end
        Xpp = Xp;
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
