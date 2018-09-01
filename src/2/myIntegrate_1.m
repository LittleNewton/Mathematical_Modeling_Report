%   filename: myIntegrate_1
%   Page 64
%% 数据输入
x = [0.3 : 0.2 : 1.5]; 
y = [0.3895 0.6598 0.9147 1.1611 1.3971 1.6212 1.8325]; 
%% 经过手工求定积分公式的精确值
Value_real = 1/2 * (1.5^2 - 0.3^2) + 1/3 * ( cos(0.3) - cos(1.5) );
%% 梯形公式
Value_trapz = trapz(x,y);
%% 辛普森公式
len = length(y);
point_middle = [ y(2:2:len-1) ];
sum_point_middle = sum(point_middle);

point_double_edge = [ y(3:2:len-1) ];
sum_point_double_edge = sum(point_double_edge);

Value_Simpson = ...
    ( y(1)+y(len)...
        + 4 * sum_point_middle ...
        + 2 * sum_point_double_edge ) * 0.2 / 3;
%% 自适应辛普森公式
Value_Simpson_Pro = quad('x+sin(x)/3',0.3,1.5);

%% 不同类型的数值积分对比
fprintf('Value_real - Value_trapz = %1.10f\n',...
    Value_real - Value_trapz);
fprintf('Value_real - Value_Simpson = %1.10f\n',...
    Value_real - Value_Simpson);
fprintf('Value_real - Value_Simpson_Pro = %1.10f\n',...
    Value_real - Value_Simpson_Pro);