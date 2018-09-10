%% Método bisección 
a = input('Digite el valor de A: ');
b = input('Digite el valor de B: ');
error = 1;
epsilon =10^-9;
x = -1;
iteraciones=0;
while (error > epsilon)
    antx=x;
    fa = cos(a)*exp(a);
    fb = cos(b)*exp(b);
    x = (a+b)/2;
    fx = cos(x)*exp(x);
    if (fb*fx < 0)
        a = x;
    else
        b = x;
    end
    error = abs((x-antx)/x);
    iteraciones = iteraciones+1;
end
fprintf('Con el metodo de biseccion se obtuvo la raiz: %f\n',x);
fprintf('Se realizaron un total de %d iteraciones\n',iteraciones);

%% Método Newton Raphson
syms h;
f = cos(h)*exp(h);
df = diff(f,h);
a = input('Digite la semilla: ');
error = 1;
epsilon =10^-9;
x = a;
iteraciones=0;
while (error > epsilon)
    antx = x;
    x=x-subs(f,h,x)/subs(df,h,x);
    error = abs((x-antx)/x);
    iteraciones = iteraciones+1;
end
fprintf('Con el metodo de biseccion se obtuvo la raiz: %f\n',x);
fprintf('Se realizaron un total de %d iteraciones\n',iteraciones);

x=4:.1:20;
y=cos(x).*exp(x);
hold on;
plot(x,y,'r');
plot(x,0,'b');
hold off;