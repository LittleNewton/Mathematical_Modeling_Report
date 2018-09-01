%   filename: lagr
%   lagrange interpolation algorithm
function y = lagr(x_known,y_known,myInput)
    %   x_known, y known, the collection of the points already known
    %	myInput, the variable I need to predict y
    %	y, a vector of the prediction based on muInput 
    n = length(x_known);    %   how many of x already known
    len = length(myInput);  %   len, number of the points to calculate
    for i = 1 : len         %   loop i, calculate once in one circle
        z = myInput(i);     % 	get one independent variable, naming z
        s = 0;              % 	initial value of the prediction
        for k = 1 : n       % 	loop k, sum
            p = 1;          % 	initial value of l(x)
            for j = 1 : n   % 	loop j, continuous multiple
                if j ~= k                   
                    p = p * (z - x_known(j)) / (x_known(k) - x_known(j));
                end
            end
            s = s + p * y_known(k);
        end
        y(i) = s;
    end
end
%   This function is very easy, just a rewriting of the funtions in book