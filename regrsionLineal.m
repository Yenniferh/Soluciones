%% Linea Recta
% clc;
% clear;
% close all;
% x = [1 2 3 5];
% y = [0.5 1.7 3.4 8.4];
%sum(x.*y)
% b=[sum(y); sum(x.*y)];
% A = [4 sum(x); sum(x) sum(x.*x)];
% a = A\b;
% hold all 
% plot(x,y, 'ob');
% xo=0:0.1:10;
% yo=(a(1)+a(2).*xo);
% plot(xo,yo, 'r');

%% Polinomio de 3er grado
% no terminado
clc;
clear;
close all;
x = [1 2 3 5];
y = [0.5 1.7 3.4 8.4];
%sum(x.*y)
b=[sum(y); sum(x.*y); sum((x.^2).*y)];
A = [4 sum(x) sum(x.^2); 
    sum(x) sum(x.^2) sum(x.^3);
    sum(x.^2) sum(x.^3) sum(x.^4)];
a = A\b;
hold all 
plot(x,y, 'ob');
xo=0:0.1:10;
yo=(a(1)+ a(2).*xo + a(3).*xo.^2);
plot(xo,yo, 'r');