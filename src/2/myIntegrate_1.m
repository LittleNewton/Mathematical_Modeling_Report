%   filename: myIntegrate_1
%   Page 64
%% ��������
x = [0.3 : 0.2 : 1.5]; 
y = [0.3895 0.6598 0.9147 1.1611 1.3971 1.6212 1.8325]; 
%% �����ֹ��󶨻��ֹ�ʽ�ľ�ȷֵ
Value_real = 1/2 * (1.5^2 - 0.3^2) + 1/3 * ( cos(0.3) - cos(1.5) );
%% ���ι�ʽ
Value_trapz = trapz(x,y);
%% ����ɭ��ʽ
len = length(y);
point_middle = [ y(2:2:len-1) ];
sum_point_middle = sum(point_middle);

point_double_edge = [ y(3:2:len-1) ];
sum_point_double_edge = sum(point_double_edge);

Value_Simpson = ...
    ( y(1)+y(len)...
        + 4 * sum_point_middle ...
        + 2 * sum_point_double_edge ) * 0.2 / 3;
%% ����Ӧ����ɭ��ʽ
Value_Simpson_Pro = quad('x+sin(x)/3',0.3,1.5);

%% ��ͬ���͵���ֵ���ֶԱ�
fprintf('Value_real - Value_trapz = %1.10f\n',...
    Value_real - Value_trapz);
fprintf('Value_real - Value_Simpson = %1.10f\n',...
    Value_real - Value_Simpson);
fprintf('Value_real - Value_Simpson_Pro = %1.10f\n',...
    Value_real - Value_Simpson_Pro);