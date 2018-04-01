% filename: Function_test

clc;clear all;
fun =  @(x) sin(x) - x.^2 / 2;
Diff = @(x)cos(x) - x;
x = -0.5 : 0.01 : 1.5;
plot(x,fun(x));

%- 可以发现，在（-0.5，0.5）之内函数有零点 -%

x0 = x(1);
x1 =  x0 - fun(x0) / Diff(x0);
while abs(x0 - x1) > 1e-10
    x0 = x1;
    x1 = x0 - fun(x0) / Diff(x0);
end
fprintf('Newton Method: x = %3.18f\n\n',x0);
hold on
plot(x0,fun(x0),'o')
grid on
xlabel('X');
ylabel('Y');

%- 自行构造迭代公式 -%

clear all
Phi = @(x) sqrt(2 * sin(x));
x0 = -1;
x1 = Phi(x0);
while abs(x0 - x1) > 1e-10
    x0 = x1;
    x1 = Phi(x0);
end
fprintf('My Method: x = %3.18f\n\n',x0);
figure;
fun =  @(x) sin(x) - x.^2 / 2;
x = -0.5 : 0.01 : 1.5;
plot(x,fun(x));
hold on
plot(x0,fun(x0),'o')
grid on
xlabel('X');
ylabel('Y');

%- fsolve: x0 = -1 -%

clear all
fun =  @(x) sin(x) - x.^2 / 2;
x0 = fsolve(fun,-1);
fprintf('fsolve Method: x = %3.18f\n\n',x0);
figure
x = -0.5 : 0.01 : 1.5;
plot(x,fun(x));
hold on
plot(x0,fun(x0),'o')
grid on
xlabel('X');
ylabel('Y');

%- fsolve: x0 = 1.5 -%

clear all
fun =  @(x) sin(x) - x.^2 / 2;
x0 = fsolve(fun,1.5);
fprintf('fsolve Method: x = %3.18f\n\n',x0);
figure
x = -0.5 : 0.01 : 1.5;
plot(x,fun(x));
hold on
plot(x0,fun(x0),'o')
grid on
xlabel('X');
ylabel('Y');

%- fzero: x0 = -1 -%

clear all
fun =  @(x) sin(x) - x.^2 / 2;
x0 = fzero(fun,-1);
fprintf('fzero Method: x = %3.18f\n\n',x0);
figure
x = -0.5 : 0.01 : 1.5;
plot(x,fun(x));
hold on
plot(x0,fun(x0),'o')
grid on
xlabel('X');
ylabel('Y');

%- fsolve: x0 = 1.5 -%

clear all
fun =  @(x) sin(x) - x.^2 / 2;
x0 = fzero(fun,1.5);
fprintf('fzero Method: x = %3.18f\n\n',x0);
figure
x = -0.5 : 0.01 : 1.5;
plot(x,fun(x));
hold on
plot(x0,fun(x0),'o')
grid on
xlabel('X');
ylabel('Y');