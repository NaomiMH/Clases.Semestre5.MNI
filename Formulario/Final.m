%
% Naomi Macias Honti a01282098
% 21 de noviembre 2018
% Lista de commandos de matlab
%

% Linealizacion

% A mano
% formulas
a1 = ( n suma(xi * yi) - suma(xi) * suma(yi) )/( n suma(xi^2) - (suma(xi))^2 )
a0 = Yp - a1*Xp
pendiente = a1
interseccion = a0
% n = cantidad de iteraciones
% Xi/Yi = datos de la segunda/tercera columna
% Xp/Yp = promedio de los datos de la segunda/tercera columna
% ecuaciones
- In y = In alfa1 + beta1 * x
ecuacion de la recta: y = alfa1 * e^( beta1 * x )
pendiente = beta1
interseccion = In alfa1
- log y = beta2 log x + log alfa2
ecuacion de la recta: y = alfa2 * x^beta2
pendiente = beta2
interseccion = log alfa2
- 1/y = ( beta3 / alfa3 ) * (1/x) + (1/ alfa3 )
ecuacion de la recta: y = alfa3 * ( x / (beta3 + x) )
pendiente = beta3 / alfa3
interseccion = 1 / alfa3

% Matlab
% ej.
% orden 2; m=2
% n = 6;
% se crea una tabla de la siguiente manera
[   n         suma(xi)    suma(xi^2) ]  [a0]  = [suma(yi*xi)]
[ suma(xi)    suma(xi^2)  suma(xi^3) ]  [a1]  = [suma(yi*xi^2)]
[ suma(xi^2)  suma(xi^3)  suma(xi^4) ]  [a2]  = [suma(yi*xi^3)]
% y = a0 + a1*x + a2*x^2
% para calcular el error S(y/x)
% se hace una tercera columna a la tabla con la formula
yi - a0 - a1 * x - a2 * x^2
% la suma de esa columna es Sr
S(y/x) = raiz( Sr / (n - (m+1)) )

% Interpolacion Polinomial
% tres datos
% piden
f(x)
% utilizando
f(x0)
f(x1)

% Lineal
% formula
F1(x) = f(x0) + ( f(x1) - f(x0) )*( x - x0 )/( x1 - x0 ) 

% Cuadratica
% formula
F2(x) = b0 + b1 * (x - x0) + b2 * (x - x0) * (x - x1)
b0 = f(x0)
fn-(n-1) = ( f(xn) - f(x(n-1)) )/( xn - x(n-1) )
b1 = f1-0
b2 = ( f2-1 - f1-0 )/( x2 - x0 )

% General
% formula
fn(x) = b0 + b1 * (x - x0) + ... + bn * (x - x0) * ... * (x - xn)
bn = ( fn-(n-1) - b(n-1) )/( xn - x0)

% Trapezoidal
% formula
I = (h/2) * [f(x0) + 2 * suma(f(xi),i=1,i<=n-1) + f(xn)]
% datos que recibes: min = a, max = b y segments = n
% h = (b-a)/n

% Simpson
% h = (b-a)/n
% xi = (h * i) + a

% 1/3
% formula
I = (b-a) * [( f(x0) + f(xn) + 4 * suma(f(xi),i=[1,3,5],i<=n-1) + 2 * suma(f(xi),i=[2,4,6],i<=n-2) )/( 3n )]

% 3/c8
% formula
I = (b-a) * [( f(x0) + f(xn) + 3 * suma(f(xi),i=[1,4,7],i<=n-2) + 3 * suma(f(xi),i=[2,5,8],i<=n-1) + 2 * 
                                                                        suma(f(xi),i=[3,6,9],i<=n-3) )/( 8n )]

% Euler
% formula
yi+1 = yi + f(xi,yi) * h
f(xi,yi) = ecuacion
% la ecuacion no necesariamente tiene el valor de y
% h = paso
% xi = xi-1 + h

% Heun
% utiliza Euler
% lo unico que cambia es la funcion yi+1
yi+1 = yi + ( f(xi,yi) + f(xi+1,yi+1) * h )/2
% en caso de que la ecuacion tenga y
% primero calcular con el metodo de Euler el valor de la yi+1, y luego mejorarlo con Heun

% Runge-Kutta

% Segundo orden

% Metodo de punto medio
yi+1 = yi + k2 * h
k1 = f(xi, yi)
k2 = f(xi + (1/2) * h, yi + (1/2) * k1 * h)

% Metodo Ralston
yi+1 = yi + [ (1/3) * k1 + (2/3) * k2 ] * h
k1 = f(xi, yi)
k2 = f(xi + (3/4) * h, yi + (3/4) * k1 * h)

% Tercer orden
yi+1 = yi + (1/6) * ( k1 + 4 * k2 + k3 ) * h
k1 = f(xi, yi)
k2 = f(xi + (1/2) * h, yi + (1/2) * k1 * h)
k3 = f(xi + h, yi - k1 * h + 2 * k2 * h)

% Cuarto orden
yi+1 = yi + (1/6) * ( k1 + 2 * k2 + 2 * k3 + k4 ) * h
k1 = f(xi, yi)
k2 = f(xi + (1/2) * h, yi + (1/2) * k1 * h)
k3 = f(xi + (1/2) * h, yi + (1/2) * k2 * h)
k4 = f(xi + h, yi + k3 * h)
