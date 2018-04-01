%   filename: Test_Lagrange
%   测试拉格朗日插值算法，对比插值产生的图像与实际图像的差别

%% 设置插值的数目为4，进行计算与画图
x = -5 : 10/4 : 5;              % 生成4组已知点
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.01 : 5;         % 这是比较接近实际的稠密的矩阵
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % 赋值，利于代码阅读
myOutput = lagr(x,y,x_real);    % 根据算法得出的插值

subplot(2,2,1);
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('4个插值点')

%% 设置插值的数目为6，再次进行计算与画图
x = -5 : 10/6 : 5;              % 生成6组已知点
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.01 : 5;         % 这是比较接近实际的稠密的矩阵
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % 赋值，利于代码阅读
myOutput = lagr(x,y,x_real);    % 根据算法得出的插值

subplot(2,2,2);
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('6个插值点')

%% 设置插值的数目为8，再次进行计算与画图
x = -5 : 10/8 : 5;              % 生成10组已知点
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.01 : 5;         % 这是比较接近实际的稠密的矩阵
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % 赋值，利于代码阅读
myOutput = lagr(x,y,x_real);    % 根据算法得出的插值

subplot(2,2,3);
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('8个插值点')

%% 设置插值的数目为10，再次进行计算与画图
x = -5 : 5;                     % 生成10组已知点
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.01 : 5;         % 这是比较接近实际的稠密的矩阵
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % 赋值，利于代码阅读
myOutput = lagr(x,y,x_real);    % 根据算法得出的插值

subplot(2,2,4);
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('10个插值点')
    
%% 设置插值的数目与实际已知点数目相同，再次进行计算与画图
x = -5 : 0.1 : 5;              % 生成100组已知点
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.1 : 5;         % 这是比较接近实际的稠密的矩阵
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % 赋值，利于代码阅读
myOutput = lagr(x,y,x_real);    % 根据算法得出的插值

figure
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('同指标个插值点')