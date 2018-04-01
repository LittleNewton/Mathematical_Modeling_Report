clc
fun2 = @(x)...
    min((x(1) + 10 * x(2))^2 + 5 * (x(3) - x(4))^2 ...
+ (x(2) - 2 * x(3))^4 + 10 * (x(1) - x(4))^4);

x0 = [10,10,10,10];
[x_search,fval_search] = fminsearch(fun2,x0);
[x_unc,fval_unc] = fminunc(fun2,x0);
fprintf('fminsearch method:\nx = (%3.8f,%3.8f,%3.8f,%3.8f), \ny = %3.8f\n\n',...
    x_search(1),...
    x_search(2),...
    x_search(3),...
    x_search(4),...
    fval_search);
fprintf('fminunc method:\nx = (%3.8f,%3.8f,%3.8f,%3.8f), \ny = %3.8f\n',...
    x_unc(1),...
    x_unc(2),...
    x_unc(3),...
    x_unc(4),...
    fval_unc);