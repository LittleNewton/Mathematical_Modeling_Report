%   filename: Compare_three_interpolations
%% ���ǶԺ�����2�������ֲ�ֵӦ��
x_1_real = -1 : 0.1 : 1;
y_1_real = (1 - x_1_real.^2).^(1/2);

y_1_lagr = lagr(x_1,y_1,x_1_real);
y_1_interp1 = interp1(x_1,y_1,x_1_real);
y_1_spline = spline(x_1,y_1,x_1_real);

%% ��ͼ�Ƚ�
figure;
plot(x_1_real,y_1_real,'k-');
text(3,2,'real curve')
hold on
grid on
plot(x_1_real,y_1_lagr,'r-')
plot(x_1_real,y_1_interp1,'c-.');
plot(x_1_real,y_1_spline,'b-')
xlabel('X');
ylabel('Y');
hold off