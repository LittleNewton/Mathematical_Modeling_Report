%   filename: Test_Lagrange
%   �����������ղ�ֵ�㷨���ԱȲ�ֵ������ͼ����ʵ��ͼ��Ĳ��

%% ���ò�ֵ����ĿΪ4�����м����뻭ͼ
x = -5 : 10/4 : 5;              % ����4����֪��
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.01 : 5;         % ���ǱȽϽӽ�ʵ�ʵĳ��ܵľ���
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % ��ֵ�����ڴ����Ķ�
myOutput = lagr(x,y,x_real);    % �����㷨�ó��Ĳ�ֵ

subplot(2,2,1);
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('4����ֵ��')

%% ���ò�ֵ����ĿΪ6���ٴν��м����뻭ͼ
x = -5 : 10/6 : 5;              % ����6����֪��
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.01 : 5;         % ���ǱȽϽӽ�ʵ�ʵĳ��ܵľ���
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % ��ֵ�����ڴ����Ķ�
myOutput = lagr(x,y,x_real);    % �����㷨�ó��Ĳ�ֵ

subplot(2,2,2);
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('6����ֵ��')

%% ���ò�ֵ����ĿΪ8���ٴν��м����뻭ͼ
x = -5 : 10/8 : 5;              % ����10����֪��
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.01 : 5;         % ���ǱȽϽӽ�ʵ�ʵĳ��ܵľ���
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % ��ֵ�����ڴ����Ķ�
myOutput = lagr(x,y,x_real);    % �����㷨�ó��Ĳ�ֵ

subplot(2,2,3);
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('8����ֵ��')

%% ���ò�ֵ����ĿΪ10���ٴν��м����뻭ͼ
x = -5 : 5;                     % ����10����֪��
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.01 : 5;         % ���ǱȽϽӽ�ʵ�ʵĳ��ܵľ���
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % ��ֵ�����ڴ����Ķ�
myOutput = lagr(x,y,x_real);    % �����㷨�ó��Ĳ�ֵ

subplot(2,2,4);
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('10����ֵ��')
    
%% ���ò�ֵ����Ŀ��ʵ����֪����Ŀ��ͬ���ٴν��м����뻭ͼ
x = -5 : 0.1 : 5;              % ����100����֪��
y = 1 ./ (1 + x.^2);

x_real = -5 : 0.1 : 5;         % ���ǱȽϽӽ�ʵ�ʵĳ��ܵľ���
y_real = 1 ./ (1 + x_real.^2);

myInput = x_real;               % ��ֵ�����ڴ����Ķ�
myOutput = lagr(x,y,x_real);    % �����㷨�ó��Ĳ�ֵ

figure
    plot(x_real,y_real,'g -');
    hold on;
    plot(x,y,'b o');
    plot(myInput,myOutput,'r .');
    xlabel('X');
    ylabel('Y');
    axis([-5 5 -1 2])
    axis('square');
    title('ָͬ�����ֵ��')