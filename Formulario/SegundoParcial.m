%
% Naomi Macias Honti a01282098
% 19 de septiembre 2018
% Lista de commandos de matlab
%

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

% Crear funcion
function [varargout] = funcion(varargin)

end

% como resultado se crea un archivo funcion.m
% puede ser llamado en cualquier momento con variable = funcion(valores)
% se puede hacer sin variable ni valores, todo depende de como se programe la funcion.

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
[variable1,variable2] = funcion(variable3)
% en este caso
% varargin{1} = variable3
% nargin = 1
% variable1 = varargout{1}
% variable2 = varargout{2}
% nargout = 2
