% filename: Test_iteration_optim

%- 方程求根 -%
clc;clear all;

x0 = 3;
x1 = x0 - (x0^2 + x0 -14) / (2 * x0 + 1);
%- 迭代次数限制 -%
i = 0;
while abs(x0 - x1) > 1e-6
    x0 = x1;
    x1 = x0 - (x0^2 + x0 -14) / (2 * x0 + 1);
    i = i + 1;
end
x1
i

%- 差的绝对值限制 -%
clear all;
i = 0;
x0 = 3;
x1 = 14 / (x0 + 1);
while abs(x0 - x1) > 1e-6
    x0 = x1;
    x1 = 14 / (x0 + 1);
    i = i + 1;
end
x1
i