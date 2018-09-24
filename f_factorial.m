function [ fact ] = f_factorial( num )
fact = 1;

for i=1:num
    fact = fact * i;
end
end

