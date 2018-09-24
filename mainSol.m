clear;
clc;
M = input('Ingrese el sistema de equaciones lineales: ');
a = input('Ingrese valores semilla: ');
%x = sol_lineal(M);
x =sol_jacobi(M, a, 1000, 0.0001);
disp(x);

% ;         separador de fila 
% (space)   separador de columna