%
% Naomi Macias Honti a01282098
% 18 de octubre 2018
% 2 hr. y 30 min.
%

function [varargout] = gaussSeidel()
% Recibir datos
funciones = input('\nIngrese la matriz de valores de x:\n');
B = input('\nIngrese la matriz de valores de b:\n');
% Buscar metodo que converge
% converge siempre que |A
basura = funciones.^2;
[valores ordenX] = max(basura,[],2);
valores = valores.^(1/2);
cant = max(ordenX);
[basura] = unique(ordenX);
if(cant~=length(basura))
    fprintf("Las ecuanciones no convergen");
else
    % Valores de X, se asume valor inicial de 0
    Xp = zeros(1,cant);
    % Se cambia el valor de la X a utilizar por 0
    for i=1:cant
        funciones(i,ordenX(i))=0;
        % Si el valor es negativo, su B se multiplica por -1,
        % en caso contrario, todas las x
        if(valores(i)<0)
            B(i)= B(i)*(-1);
        else
            funciones(i,:)=funciones(i,:)*(-1);
        end
    end
    % Se agregan las B en las funciones
    funciones = [B funciones];
    % Se divide cada linea entre el valor de dicha linea
    funciones=funciones(1:cant,:)./valores;
    % Se inicia un loop para encontrar los valores
    continuar = true;
    encontrado = false;
    while(continuar)
        iteraciones = input('Ingrese el escalar de iteraciones maximas: ');
        contador = ones(1,cant);
        varargout{2}=[contador-1;Xp;contador-1];
        while(contador <= iteraciones)
            % Se calcula valores de X
            X = [1 Xp];
            for i=1:cant
                X(i+1) = sum(funciones(i,:).*X);
            end
            X(1) = [];
            % Se calcula el error aproximado de cada x
            Ea = (X-Xp)./X;
            Ea = (Ea.^2).^(1/2);
            Ea = 100*Ea;
            varargout{2}=[[contador;X;Ea] varargout{2}];
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
            fprintf('\nSe encontro una raiz en %.4f',X);
            fprintf('\nCon un valor aproximado de error de %.2f',Ea);
            continuar = false;
            fprintf('\n');
        else
            fprintf('\nRaiz aproximada en %.4f',X);
            fprintf('\nCon un valor aproximado de error de %.2f',Ea);
            continuar = input('\nDesea refinar? [true/1 o false/0] ');
        end
    end
end
end
