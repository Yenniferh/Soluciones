function interpolacion()
    clear;
    clc;
    x=[0 2 4 6 8 10];
    y = [0   -0.3784    0.4947   -0.2683   -0.1440  0.4565];
    
    disp(y)
    %%% Describir cuando x = 3
    %%%% Polinomio de grado 2 %%%%
    mat = [1 2 4; 1 6 36; 1 8 64];
    yb = [-0.3784; -0.2683; -0.1440];
    %a=mat\yb
    [L U P]=lu(mat);
    yb2 = P*yb; 
    z= SProgresiva(L,yb2, 3);
    xx= SRegresiva(U,z, 3);
    
    hold on
        plot(x,y,'*r');
        plot(3,xx(1)+xx(2)*3+xx(3)*9,'*b');
    hold off
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
