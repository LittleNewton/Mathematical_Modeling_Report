function y = Sum_pro(n)
% 	SUM_PRO	plus a lot of numbers
%	filename: Sum_pro
    tmp = 1 : n;
    tmp_factorial = factorial(tmp);
    y = sum(tmp_factorial);
end