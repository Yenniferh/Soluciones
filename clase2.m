clc; clear;
% a=zeros(1,10);
% a(3)=789;
% fprintf('%8d \n',a(3));
% disp(a);    %muestra todo el contenido de la variable
% for i=1:10
%     a(i)=i;
% end
% disp(a);
% for i=1:10
%     fprintf('a(%d)= %2d \n',i,i);
% end
n=input('Digite el número: ');
divisor=1000;
dividendo=n;
a=zeros(1,4);
i=4;
while(divisor>=1)
    a(i)=floor(dividendo/divisor);
    residuo=mod(dividendo,divisor);
    dividendo=residuo;
    divisor=divisor/10;
    i=i-1;
end
%Convertir el vector a un solo numero
b=0;
for i=0:3
    b=a(4-i)*(10^i)+b;
end
fprintf('el numero al reves es: %2d \n', b);