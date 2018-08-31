%
% Naomi Macias Honti a01282098
% 29-31 de agosto 2018
% Lista de commandos de matlab
%

% Ayuda de commandos
help funcion

% Documentacion
doc

% Ecuaciones
pi
exp(numero)
% numero seria el exponente de la exponencial
mod(dividiendo,divisor)
% regresa el residuo

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
% acepta en lugar de numeros, funciones para hacer numeros
% ej. magic(numero) crea una matriz con numeros consecutivos en un orden diagonal

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

% Maximo
variable = max(variable2)
% busca por columna el mayor
variable = max(variable2,[],2)
% busca por renglones el mayor

% Minimo
variable = min(variable2)
% aplica igual que con maximo

% Encontrar
variable = find(numero)
% regresa la ubicacion del numero buscado
% el numero tiene un formato especifico
variable = find(variable2 == numero)
% busca en variable2 el numero exacto
% en caso de buscar un numero decimal hacerlo de este modo
% ej.
% dado una variable
variable = 0:0.1:1
% si se busca
variable2 = find(variable==0.3)
% da una variable vacia, por el redondeo
% solucion
variable2 = find(abs(variable-0.3) < 0.001)

% For
for expression
statements
end
% expression = inicializar:cambio:final
% en caso de no especificar cambio, se aumenta en 1 por default

% If
if expression
statements
elseif expression
statements
else
statements
end
% expression puede ser
% variable > variable 2
% variable < numero
% variable = variable 2
% numero y usar break para salir del loop

% While
while expression
statements
end
% igual que if

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
variable = [variable 4]
% tener cuidado con las reglas de concatenacion

% Secuencia de numeros
variable = inicio:cambio:final
% de no agregarse cambio, por default sera una secuencia en aumento de 1

% Modificar un numero especifico en una matriz
% importante recordar que no hay posicion 0
variable(renglon,columna) = valor
% cambia el valor original por el valor dado en el renglon y columna especifica
variable(numero) = valor
% busca el valor en la ubicacion numero buscando primero por los renglones de la primera columna
% si el numero es mayor a la cantidad de renglones, se pasa a la segunda columna
% no acepta numeros mas grandes que la cantidad de elementos

% Ecuaciones para matrices
variable = variable1 + variable2
variable = variable1 . * numero
% el punto especifica que es una operacion para cada elemento
variable(numero,:) = valor
% actua sobre todas las columnas del renglon numero

% Funciones de numeros random
variable = rand(renglones,columnas)
variable = randi(maximo,renglones,columnas)
% numeros random de 1 a maximo, incluyendo al maximo y al 1
variable = randn(renglones,columnas)
% con distribucion normal
randperm(maximo,muestras)
% permutaciones de 1 a maximo, muestras es opcional

% Sort
sort(variable,modo)
% en caso de no especificar modo, se ordena de modo ascendente
% en caso de que variable sea una matriz, se ordenan por columnas
% en caso de querer ordenar por renglones, se puede poner modo = 2
% tambien se puede
% modo = 'ascend'
% modo = 'descend'
% tambien puede ordenar strings

% Desviacion estandard
variable = std(variable1,0,modo)
% por default, con solo variable 1, regresa la desviacion por columna
% agregando 0 y modo = 2, regresa la desviacion por renglon
% Nanfalg:
variable = std(variable1,'omitnan')
% omite los valores NaN
% se puede hacer lo opuesto con 'includenan'

% Media
variable = mean(variable1,modo)
% por default, sin el modo, regresa la mediana por columna
% modo = 2, regresa la mediana por renglon
% tambien aplica las Nanfalg

% Mediana
variable = median(variable1,modo)
% igual que las anteriores

% Variables de funciones
% archivos .m
varargin{numero}
% valor de las variables que son recibidas
nargin
% cantidad de variables recibidas
varargout{numero}
% valor de las variables que seran regresadas
nargout
% cantidad de variables a regresar
% ej.
[variable1,variable2] = funcion(variable3)
% en este caso
% varargin{0} = variable3
% nargin = 1
% variable1 = varargout{0}
% variable2 = varargout{1}
% nargout = 2

% Graficas

% primero hay que activar figuras para graficar
figure(nombre,valor)
% se puede llamar directo o especificar nombre y valor para personalizar
% nombre = 'Color', valor = 'white' establece el fondo en blanco
% nombre = 'Name', valor = 'titulo' establece el titulo de la pantalla
% nombre = 'NumberTitle', valor = 'off' quita el numero de la pantalla que aparece antes del nombre
% si se llama otra figura, abrira otra ventana
% se puede especificar guardar en una variable para poder modificar sus propiedades
savefig(nombre)
% guarda la figura activa en un archivo llamado nombre
% ej. nombre = 'histograma.fig'
variable = openfig(nombre)
% sigue siendo opcional guardarlo en una variable
variable2 = findobj(variable,'type',grafica)
% busca el tipo de grafica en la figura variable para guardarlo en variable2
% esto permite seguir editando la grafica

% se puede divir en diferentes cuadrantes la pantalla para trabajar con mas de una tabla
subplot(renglones,columnas,activo)
% se especifica un activo para especificar donde se trabaja primero
% para cambiar de activo, solo se tiene que volver a especificar la divicion con un numero diferente de activo
% se puede especificar un rango de activos (ej. 2:3) mientras esten consecutivos
% si se guarda en una variable, esto permite modificarla directamente sin tener que volver a cambiar de pantalla activa

% elegir entre las siguientes graficas

% histogramas
variable = histogram(variable1,extra)
% si extra = numero, el numero definira la cantidad de columnas en el histograma
% si extra = 'BinWidth',numero define el grueso de las columnas a numero
% si extra = 'Normalization','probability' las columnas indicaran la probabilidad de cada valor
% si extra = 'FaceColor',color cambia el color de las columnas
% si extra = 'EdgeColor',color cambia el color de las lineas de las columnas
% si extra = rango de numeros, se divide de acuerdo a los numeros dados las columnas
% ej. [-10 -2:0.5:2 10]
% la primera columna es de -10 a -2, la siguientes son las creadas a partir de -2 a 2 cada 0.5 y la ultima es de 2 a 10
% no es necesario poner variable, de hacerlo permite ver las propiedades
% variable, a continuacion, se considera la variable que guarda el histograma
variable2 = variable.propiedad
% permite guardar directamente el valor de alguna de las propiedades
variable2 = morebins(variable)
% regresa el nuevo numero de columnas, mayor al anterior, con el cambio aplicado al histograma
variable.propiedad = valor
% para editar directamente la propiedad
variable2 = sum(variable.Values)
% regresa el valor de la suma de los valores en variable
variable2 = categorical(variable,[valores en variable],{nuevos valores})
% pone los nuevos valores en la variable2
% esto sirve para graficarlo con categorias, tanto si son texto como numeros u otros caracteres.
% ej. valores en variable = 1 2, nuevos valores = 'no' 'yes'
hold on
% pone en espera la grafica manteniendo activo el espacio
variable2 = histogram(variable3,extra)
% sobrepone en la misma grafica un segundo histograma

% Plot
% hay que tener cuidado con este grafico
% la mejor manera de conseguir el grafico deseado es especificando los valores de x y y
variable = plot(valor)
% si valor = matriz, x van a ser la cantidad de renglones, y el valor de cada elemento y las columnas definiran el numero de graficas
variable = plot(x,y,modo)
% si modo = '--' u otros parecidos, la linea sera punteada
% se puede declarar varias lineas al mismo tiempo
variable = plot(x,y,modo,x2,y2,modo2,x3,y3,modo)
% no importa que se omita el modo
% en el mismo modo se puede personalizar la linea de diferentes maneras
% ej. 'b--o' en este caso, especifica el color (b), tipo de linea (--) y un marcador (o).
% otras caracteristicas que se pueden editar:
% 'LineWidth' define el grueso de la linea
% 'MarkerSize' define el tamano del marcador
% 'MarkerEdgeColor' define el color del marcador
% 'MarkerFaceColor' define el color de la linea
% 'DurationTickFormat',(ej.)mm:ss define en el eje de las x que los numeros sean en formato mm:ss

% Modificaciones extra
% nota: estos cambios se hacen para la grafica, no para la pantalla
xlabel(nombre)
ylabel(nombre)
% definen los nombres de los ejes
title(nombre)
% define el titulo de la grafica

% Info extra
% formar un circulo
r = 2;
% radio
xc = 4;
% desplazamiento en x
yc = 3;
% desplazamiento en y
theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
plot(x,y)
axis equal

% Serie Taylor
% termino del error
Rn(x)=(f^n(c)*h^n)/(n!)
% no se use esta ecuacion directamente en matlab
% x = punto conocido
% n = orden de la expresion
% h = distancia al punto conocido
% nota importante: usar la calculadora en radianes
