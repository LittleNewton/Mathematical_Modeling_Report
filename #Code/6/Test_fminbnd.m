% example 1
x = fminbnd(@square,1,2);

% example 2
[a,b] = fminbnd(@square,0.5,2);

% example 3
[a,b,flag] = fminbnd(@square,0.3,2);

% example 4
[a,b,flag,output] = fminbnd(@square,0.3,2);
output

function y = square(x)
    y = x^2;
end