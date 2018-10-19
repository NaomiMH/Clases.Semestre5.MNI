%
% Naomi Macias Honti a01282098
% 19 de septiembre 2018
% Lista de commandos de matlab
%

% Redondeo
round(valor,numero)
% numero es opcional, en caso de agregarlo mientras sea un numero mas alto, se incluyen en la respuesta mas decimales.
% Nota: lo mas preciso es 3 o 4, de agregarse mas, deja de tener sentido.

% Exponente
numero^exponente
% no maneja vectores.
% Para que no de error con los vectores, se puede usar los siguientes:
power(numero,exponente)
numero.^exponente

% Handle
% inicializar
variable = @(incognita) formula
% llamar
variable2 = variable(valor)
% ej.
f = @(x) tan(x)
a = f(2);
% el valor tambien puede ser un vector, como resultado se tendra una variable2 de iguales dimensiones.
% Nota: en caso de meter valores vectores, tener cuidado en como se escribio la formula.
% ej.
% se tiene la siguiente formula
g(y) = ( (68.1 x 9.8) / y ) x ( 1 - e^(-(y x 10) / 68.1) ) - 40
% Al pasarlo queda asi:
g(y) = ( (68.1 x 9.8) / y ) x ( 1 - exp(-(y x 10) / 68.1) ) - 40
% Cambiando e = exp()
% En caso de querer usar un vector como valor, no lo permitiria, aun hay que hacer unos cambios.
% Los errores saldian con la primera divicion y la segunda multiplicacion.
% Se hacen los siguientes cambios:
% / = power(valor,-1)
% x = .x
% Resultado final:
g = @(y) (68.1 x 9.8 x power(y,-1)) .x (1 - exp(-(y x 10) / 68.1)) - 40

% Derivadas
% No se aceptan handles, asi que se recibe la funcion sin @(x)
syms x
% Importante que se ponga antes de ingresar la funcion
variable = input('Texto: ')
variable2 = diff(variable)
% La variable2 guarda la ecuacion derivada de variable
% sin embargo esta ecuacion aun no es una funcion que pueda ser usada igual que las demas
variable3 = matlabFunction(variable2)
% variable3 se convierte en un handle.

% Crear funcion
function [varargout] = funcion(varargin)

end
% como resultado se crea un archivo funcion.m
% puede ser llamado en cualquier momento con:
variable = funcion(valores)
% se puede hacer sin variable ni valores, todo depende de como se programe la funcion.

% Nota:
% Las lineas dentro de la funcion terminan con ;
% en algunos casos se puede dejar una linea sin ; pero es mas recomendable y limpio.

% Variables de funciones
varargin{numero}
% valor de las variables que son recibidas
nargin
% cantidad de variables recibidas
varargout{numero}
% valor de las variables que seran regresadas
nargout
% cantidad de variables a regresar
% ej.
% se llama de forma
[variable1,variable2] = funcion(variable3)
% en este caso
% varargin{1} = variable3
% nargin = 1
% variable1 = varargout{1}
% variable2 = varargout{2}
% nargout = 2

% Operaciones de matrices 2

% Determinante
% la matriz debe de ser cuadrada
variable = det(matriz)

% Transpuesta
variable = matriz'
% invierte el sentido de los renglones y las columnas

% Invertir
variable = matriz.^-1
variable = inv(matriz)
% tiene que ser cuadrada para esta funcion

% Traza
variable = trace(matriz)
% tiene que ser cuadrado

% Aumentacion = Concatenacion

% Divicion
variable = matriz^(-1)*matriz2
variable = matriz\matriz2
% Nota: el resultado no es exacto, al menos variable no es igual a matriz\matriz2 ni a matriz^(-1)*matriz2
% requiere algun redondeo

% Descomposicion LU
% Se utiliza una funcion para descomponerlo automaticamente
[variable variable2] = lu(matriz);
% Esta funcion se usa para resolver [A][X]=[B]
% continuando se tiene que obtener D y X
% D = L\B
% X = U\D

% Balance de masa
% sumaEntra(Q*c) = sumaSale(Q*c)
% Si se acomodan las ecuaciones de cada tanque, en un sistema conectado,
% se puede utilizar gauss-seidel para resolverlo
% las ecuanciones de todos los tanques ([A][X]=[B]) serian las funciones y las B.
% El resultado te daria las concentraciones de los tanques.

% Circuitos
% Nota: esta explicacion no esta bien hecha, de preferencia buscar ejemplos.
% Se le da una direccion al circuito
% Para cada nodo se le hace una ecuacion, su i correspondiente.
% Las mallas se crean en cada mitad del circuito
% a partir de la resistencia del medio, se le buscan valores correspondientes para las otras dentro de las ecuaciones antes encontradas
% se multiplica la i por la resistencia.
% El lado de la bateria termina tambien con el valor del voltaje
% Se juntan todas las formulas cambiando los valores como las tablas [A][X]=[B]
% x son las i y el resultado te da la corriente de cada malla y te permite calcular el voltaje de cada nodo.
