function [ X ] = sol_lineal( M )
% [a11 a12 a13|b1] 
% [a21 a22 a23|b2]
% [a31 a32 a33|b3]

% a11x1 + a12x2 + a13x3 = b1
% a21x1 + a22x2 + a23x3 = b2
% a31x1 + a32x2 + a33x3 = b3

% a(1,:) Devuelve los elementos de la primera fila
% a(:,1) Devuelve los elementos de la primera columna

% end = final
% : = todo

   A = M(:, 1:end-1); %Todas las filas y todas excepto la ultima columna
   b = M(:, end);
   X = A\b;
end

