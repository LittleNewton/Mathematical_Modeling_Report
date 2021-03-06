% filename: GS

%- 用高斯-赛德尔方法进行迭代 -%

clc

A1 = [1/9,1/9,7/9];
A2 = [1/10,1/10,8/10];
A3 = [1/15,1/15,13/15];

x1 = sum(A1 .* [0 0 1]);
x2 = sum(A2 .* [0 0 1]);
x3 = sum(A3 .* [0 0 1]);

for k = 1 : 4
    x1 = sum(A1 .* [x2,x3,1]);
    x2 = sum(A2 .* [x1,x3,x1]);
    x3 = sum(A3 .* [x1,x2,1]);
end
fprintf('x1 = %1.9f\nx2 = %1.9f\nx3 = %1.9f\n\n',x1,x2,x3);

%- 用公式解决 -%

A = [9 -1 -1;-1 10 -1;-1 -1 15];
b = [7;8;13];

D = diag(diag(A));
L = -1 * tril(A,-1);
U = -1 * triu(A,1);

B = (D - L)^(-1) * U;
f = (D - L)^(-1) * b;

x = [0 0 0]';
for k = 1 : 4
    x = B * x + f;
end
fprintf('x1 = %1.9f\nx2 = %1.9f\nx3 = %1.9f\n',x(1),x(2),x(3));