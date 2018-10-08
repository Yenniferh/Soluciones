function interpolacion()
    clear all;
    clc;
    close all;
    x = [0 2 4 6 8 10];
    y = [0   -0.3784    0.4947   -0.2683   -0.1440  0.4565];
    xx=3; %punto a evaluar
    np=5; %cantidad de puntos
    indx=[1,2, 4, 5, 6 ]; %indices de los puntos elegidos
    a=main(x(indx),y(indx)',np,xx);
    
    evaluar =0;
    for i=0:np-1
        evaluar=evaluar+a(i+1)*xx.^i;
    end
    
    hold on
        plot(x,y,'*r');
        plot(3,evaluar,'*b');
    hold off
end

function x =  main(x,yb,n,xx) 
 
    %%%% Polinomio de grado n %%%%
    for i=0:n-1
        mat(i+1,:)=x.^i;
    end
    mat=mat';  
    %a=mat\yb
    [L U P]=lu(mat);
    yb2 = P*yb; 
    z= SProgresiva(L,yb2, n);
    x= SRegresiva(U,z, n);
    
end

function z = SProgresiva(L,b, tam)
    z = zeros(1,tam);
    for i = 1: tam
        suma=0;
        for j=1:i-1
            suma=suma+L(i,j)*z(j);
        end
        z(i) = (b(i)-suma)/L(i,i);
    end
end


function x = SRegresiva(U,z, tam)
    x = zeros(1,tam);
    for i = tam:-1:1
        suma=0;
        for j=i+1:tam
            suma=suma+U(i,j)*x(j);
        end
        x(i) = (z(i)-suma)/U(i,i);
    end
end
