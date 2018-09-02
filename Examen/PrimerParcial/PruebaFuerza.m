% Naomi Macias Honti a01282098
% 31 de agosto 2018
% Tiempo no estimado
% Crea un vector de masas aleatorias entre 50 y 100, se las manda a la funcion Fuerza (antes creada), calcula la fuerza real y comprueba que sea igual a lo recibido.
function pruebaFuerzas()
vectorMasas = randi(51,1,10)+49;
FuerzasReales = vectorMasas * 9.81;
Fuerzas = fuerzas(vectorMasas);
if(FuerzasReales==Fuerzas)
    fprintf('La funcion funciona');
else
    fprintf('La funcion no funciona');
end
end
