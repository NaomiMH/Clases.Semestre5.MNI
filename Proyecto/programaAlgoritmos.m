%
% Naomi Macias Honti a01282098
% 5 de octubre 2018
% Interfaz principal.
%

function programaAlgoritmos()
menu();
dato = input('');
switch dato
    case 1
        sBiseccion();
    case 2
        sRegula();
    case 3
        sIteracionSimple();
    case 4
        sNewton1();
    case 5
        sGauss();
    case 6
        sNewton2();
    case 7
        sTrapezoidal();
    case 8
        sSimpson();
    case 9
        sEuler();
    case 10
        sRunge();
    otherwise
        fpritf('El dato ingresado es invalido');
end
