% filename: Cobb_Douglas

%% initialization
cd ..;cd ..;cd ./#Data/06

Total_product = xlsread('experiment_6.xlsx','Sheet2','B2:B20');

Fund = xlsread('experiment_6.xlsx','Sheet2','C2:C20');
Labour = xlsread('experiment_6.xlsx','Sheet2','D2:D20');

fun = @(x,xdata) x(1) .* xdata(:,1).^x(2) .* xdata(:,2).^x(3);

x0 = [0.6,0.091,4.8179];

%% 非线性解法
xdata = [Labour Fund ];
ydata = Total_product;
x_nonlin = lsqcurvefit(fun,x0,xdata,ydata)

%% 线性解法

lb = zeros(3,1);

C = [ones(19,1),log(Fund),log(Labour)];

ub = ones(3,1);
x = lsqlin(C,log(Total_product),[],[],[],[],lb,ub);
x_lin = [exp(x(1)),x(2),x(3)]