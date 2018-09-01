% filename: Input_and_output

clc;clear all;
A = [15/100 30/100  20/100
    20/200  10/200  60/200
    30/150  45/150  0];

d = [50 150 200]';
B = eye(3) - A;
x = B\d

%- 外部需求分别增加1 -%
d = d + 1;
x = B\d