% x=1:1:10;
% x=linspace(1,10,10);
% x2=linspace(0,2*pi,100);
% y2=sin(x2);
% plot(x,y);
% %Variables simbólicas
% syms x; %
% f=sin(x);
% Derivada
% dv=diff(f,x);
% disp(dv);
% %Derivada de segundo orden de la unción f con respecto a la variable x
% dv=diff(f,x,2);
% disp(dv);
% Evaluar
% ev=subs(f,x,x2);
% disp(ev);
% Taylor series
% for o=4:2:26
%     taylorsen=taylor(f,'Order',o);
%     plot(x2,y2,'r');
%     hold on
%     y3=subs(taylorsen,x,x2);
%     plot(x2,y3,'b');
%     hold off
%     pause(1); %Delay de 1 segundo
% end

%% Bisección
clear; clc; format long;
syms h;
f=((pi*h^2)*(9-h)/3)-30;
epsilon=10^-9;
a=0;
b=6;
error=1;
x=-1;
cont=0;
% Regula falsi
while(error>epsilon)
    xant=x;    
    fa=subs(f,h,a);
    fx=subs(f,h,x);
    fb=subs(f,h,b);
    x=b- fb*(a-b)/(fa-fb);
    if(fx*fb<0)
        a=x;
    else
        b=x;
    end
    error=abs((x-xant)/x)*100; %Tipo de error
    cont=cont+1;
end
fprintf('La profundidad es %f y se hicieron %d iteraciones. Utilizando el método de RF. \n',x,cont);
x=-1;
error=1;
a=0;
b=6;
cont=0;
while(error>epsilon)
    xant=x;       
    x=(a+b)/2;
    fx=subs(f,h,x);
    fb=subs(f,h,b);
    if(fx*fb<0)
        a=x;
    else
        b=x;
    end
    error=abs((x-xant)/x)*100; %Tipo de error
    cont=cont+1;
end
fprintf('La profundidad es %f y se hicieron %d iteraciones. Utilizando el método de Bisección. \n',x,cont);