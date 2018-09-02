% Naomi Macias Honti a01282098
% 31 de agosto 2018
% Tiempo no estimado.
% Recibe un vector de masas, calcula la fuerza debida a la gravedad de cada masa.

function [varargout] = fuerzas(varargin)
varargout{1} = varargin{1} * 9.81;
end
