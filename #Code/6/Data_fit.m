% filename: Data_fit

clc
cd ..;cd ..;cd ./#Data/06
i = xlsread('experiment_6.xlsx','A2:A34');
y = xlsread('experiment_6.xlsx','B2:B34');

fun = @(x,t) x(1) + x(2) * exp(-x(4) * t) + x(3) * exp(-x(5) * t);
x0 = [0.5,1.5,-1,0.01,0.02];


opt = optimset('Display','iter'); %- GN method -%
x = lsqcurvefit(fun,x0,i,y,[],[],opt)
y = y + rand()/2;
x = lsqcurvefit(fun,x0,i,y,[],[],opt)