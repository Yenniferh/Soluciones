function [ X ] = sol_jacobi( M, x, max_iter, epsilon )
    A = M(:, 1:end-1);
    B = M(:,end);
    tam = size(M); %Devuelve un vector de 2 elementos en (1) numero de filas (2) numero de columnas
    n = tam(1);
    X = zeros(1,n);
    iter = 1;
    error = ones(1, n);
    myepsilon = ones(1, n).*epsilon;
    sw = 0;
    while (iter < max_iter && sw == 0)
        for i=1:n
            suma = 0;
            for j=1:n
                if(j ~= i)
                   suma = suma + A(i,j).*x(j);
                end
            end
            X(i) = (B(i) - suma)/ A(i,i);
        end
        error = abs((X-x)./X);
        sw = min(error < myepsilon);
        iter = iter + 1;
        x = X;
    end
    
        
end

