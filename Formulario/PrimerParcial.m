
% Lista de commandos

% Ayuda de commandos
help funcion

% Documentacion
doc

% Iprimir texto
fprintf('Shalala\n%.2f\n',a)
% \n pasar renglon
% % se insertara una variable
% .2f especificacion de decimales
% a la variable que sera impresa en %

% Leer texto
variable = input('texto ', 's')
% variable donde se guardara lo introducido
% texto lo que aparecera en la pantalla pidiendo introducir la variable
% 's' hace que se guarde lo introducido tal cual
% sin lo anterior obliga al usuario a introducir numeros

% Borrar variables
clear

% Borrar pantalla
clc

% Crear archivo csv
csvwrite('nombre.dat',m)
% m variable a ser guardada en el archivo
% nombre.dat nombre del archivo a ser creado

% Leer archivo csv
csvread('nombre.dat')

% Buscar ceros
% se puede especificar una dimension de busqueda
% esto cambia el formato de busqueda
% 1 o default = por columnas
% 2 = por renglones
% 3 o mayor = por elemento
any(variable)
% regresa true si hay un numero mayor a cero
all(variable)
% regresa true si todos los numeros son mayores a cero

% Crear unos
variable = ones(renglones,columnas)

% Crear ceros
variable = zeros(renglones,columnas)

% If
if expression
statements
elseif expression
statements
else
statements
end
% expression = inicializar:cambio:final
% en caso de no especificar cambio, se aumenta en 1 por default

% While
while expression
statements
end
% break se puede usar para salir del loop
% expression puede ser
% variable > variable 2
% variable < numero
% variable = variable 2
% numero

% Switch
switch variable
case expression
statements
otherwise
statements
end
% variable lo que se analizara para elegir el caso correspondiente
% otherwise lo que se hara si no encuentra un caso
% expression puede ser una variable {numero numero} si es uno o el otro.

% Iniciar variable con numeros
variable = [0 1; 2 3]
% quedando en el reglon 1 = 0 1 y en el renglon 2 = 2 3
% En lugar de espacio, pueden estar separados por , tambien.

% Agregar numeros a variable
variable = [v 4]
% tener cuidado con las reglas de concatenacion

% Secuencia de numeros
variable = inicio:cambio:final
% de no agregarse cambio, por default sera una secuencia en aumento de 1
