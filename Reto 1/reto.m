/**
 * Naomi Macias Honti a01282098
 * 17 de Agosto 2018
 * Tiempo no estimado.
 * Si recibe un valor de entrada, regresa el factorial del valor. Si recibe dos valores de entrada, regresa el producto de los numeros. Si se piden dos variables de salida, en el caso de un valor, regresa el valor en la segunda variable, en el caso de dos valores, regresa los dos valores en la misma segunda variable.
 */
function [varargout] = prueba(varargin)
    if nargin == 1
        varargout{1} = factorial(varargin{1});
    elseif nargin == 2
        varargout{1} = varargin{1}*varargin{2};
    else
        varargout{1} = NaN;
        fprintf("Error\n");
    end
    if nargout == 2
        if nargin == 2
            varargout{2} = [varargin{1} varargin{2}];
        elseif nargin == 1
            varargout{2} = varargin{1};
        else
            varargout{2} = NaN;
        end
    end
end
