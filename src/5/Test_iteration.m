% filename: Test_iteration

%- ������� -%
clc;clear all;

x0 = 3;
x1 = 14 / (x0 + 1);
%- ������������ -%
while i < 50
    x0 = x1;
    x1 = 14 / (x0 + 1);
    i = i + 1;
end
x1

%- ��ľ���ֵ���� -%
clear all;
x0 = 3;
x1 = 14 / (x0 + 1);
while abs(x0 - x1) > 1e-6
    x0 = x1;
    x1 = 14 / (x0 + 1);
end
x1