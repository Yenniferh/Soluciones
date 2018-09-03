clear;
clc;
%% Punto fijo evaluando directamente en la función
%% x=e^(-x) -x
% a=input('Digite el valor semilla: ');
% epsilon=10^-7;
% error=1;
% antx=-1;
% x=a;
% while (error>epsilon)
%     antx=x;
%     x=exp(-x);
%     error=abs((x-antx)/x);
% end
% disp(x);


%% Ejercicio del tanque (Evaluando en la funcion)
% a=input('Digite el valor semilla: ');
% epsilon=10^-7;
% error=1;
% antx=-1;
% x=a;
% x=0:0.01:6;
% plot(x,(pi*(x.^2).*(9-x))/3-30+x);
% while (error>epsilon)
%     antx=x;
%     x=9-90/(pi*x^2);
%     error=abs((x-antx)/x);
% end
% disp(x);

%% Ejercicio del tanque (Utilizando variable simbolica)
% syms h;
% a=input('Digite el valor semilla: ');
% epsilon=10^-7;
% error=1;
% antx=-1;
% x=a;
% f=exp(-h);
% while (error>epsilon)
%     antx=x;
%     x=subs(f,h,x);
%     error=abs((x-antx)/x);
% end
% disp(x);

%% Newton Raphson ()
% syms h;
% a=input('Digite el valor semilla: ');
% epsilon=10^-7;
% error=1;
% antx=-1;
% x=a;
% f=exp(-h)-h;
% maxiter=1000;
% df=diff(f,h);
% i=0;
% while (i<maxiter && error>epsilon)
%     antx=x;
%     x=x-subs(f,h,x)/subs(df,h,x);
%     error=abs((x-antx)/x);
%     i=i+1;
% end
% disp(x);
% disp(i);
 
%% Sin(x)*exp(x)-1      Newton Raphson
% syms h;
% a=input('Digite el valor semilla: ');
% epsilon=10^-7;
% error=1;
% antx=-1;
% x=a;
% f=sin(h)*exp(h)-1;
% maxiter=1000;
% df=diff(f,h);
% i=0;
% while (i<maxiter && error>epsilon)
%     antx=x;
%     x=x-subs(f,h,x)/subs(df,h,x);
%     error=abs((x-antx)/x);
%     i=i+1;
% end
% disp(x);
% disp(i);

%% 
a=input('Digite el valor semilla: ');
epsilon=10^-7;
error=1;
antx=-1;
x=a;
while (error>epsilon)
    antx=x;
    x=asin(exp(-x));
    error=abs((x-antx)/x);
end
disp(x);

