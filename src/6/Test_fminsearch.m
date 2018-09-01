% filename: Test_fminsearch

fun = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;

options = optimset('PlotFcns',@optimplotfval);
x0 = [-1.2,1];
x = fminsearch(fun,x0,options)