%	filename: Plane_Wing

%% 实际数据录入
x = [0 3 5 7 9 11 12 13	14 15];
y_upside = [0 1.8 2.2 2.7 3.0 3.1 2.9 2.5 2.0 1.6]; 
y_downside = [0 1.2 1.7 2.0 2.1 2.0 1.8 1.2 1.0 1.6];

%% 目标插值点
x_real = [0 : 0.1 : 15];

y_upside_spline = spline(x,y_upside,x_real);
y_dowmside_spline = spline(x,y_downside,x_real);

y_upside_interp1 = interp1(x,y_upside,x_real);
y_dowmside_interp1 = interp1(x,y_downside,x_real);

%% 三次样条插值与梯形积分
area_big_trapz = trapz(x_real,y_upside_spline);
area_small_trapz = trapz(x_real,y_dowmside_spline);
fprintf('area_real_trapz_spline = %2.20f\n',...
    area_big_trapz - area_small_trapz);

%% 三次样条插值与辛普森积分
% 大面积
len = length(y_upside_spline);

point_middle = [ y_upside_spline(2:2:len-1) ];
sum_point_middle = sum(point_middle);

point_double_edge = [ y_upside_spline(3:2:len-1) ];
sum_point_double_edge = sum(point_double_edge);

area_Simpson_big = ...
    ( y_upside_spline(1) + y_upside_spline(len) ...
     + 4 * sum_point_middle ...
     + 2 * sum_point_double_edge ) * 0.1 / 3;
% 小面积
len = length(y_dowmside_spline);

point_middle = [ y_dowmside_spline(2:2:len-1) ];
sum_point_middle = sum(point_middle);

point_double_edge = [ y_dowmside_spline(3:2:len-1) ];
sum_point_double_edge = sum(point_double_edge);

area_Simpson_small = ...
    ( y_dowmside_spline(1) + y_dowmside_spline(len) ...
     + 4 * sum_point_middle ...
     + 2 * sum_point_double_edge ) * 0.1 / 3;
% 实际面积
fprintf('area_real_Simpson_spline = %2.20f\n',...
    area_Simpson_big - area_Simpson_small);

%% 分段线性插值与梯形积分
y_upside_interp1 = interp1(x,y_upside,x_real);
y_dowmside_interp1 = interp1(x,y_downside,x_real);

area_big_trapz = trapz(x_real,y_upside_interp1);
area_small_trapz = trapz(x_real,y_dowmside_interp1);
fprintf('area_real_trapz_interp1 = %2.20f\n',...
    area_big_trapz - area_small_trapz);

%% 分段线性插值与辛普森积分
% 大面积
len = length(y_upside_interp1);

point_middle = [ y_upside_interp1(2:2:len-1) ];
sum_point_middle = sum(point_middle);

point_double_edge = [ y_upside_interp1(3:2:len-1) ];
sum_point_double_edge = sum(point_double_edge);

area_Simpson_big = ...
    ( y_upside_interp1(1) + y_upside_interp1(len) ...
     + 4 * sum_point_middle ...
     + 2 * sum_point_double_edge ) * 0.1 / 3;
% 小面积
len = length(y_dowmside_interp1);

point_middle = [ y_dowmside_interp1(2:2:len-1) ];
sum_point_middle = sum(point_middle);

point_double_edge = [ y_dowmside_interp1(3:2:len-1) ];
sum_point_double_edge = sum(point_double_edge);

area_Simpson_small = ...
    ( y_dowmside_interp1(1) + y_dowmside_interp1(len) ...
     + 4 * sum_point_middle ...
     + 2 * sum_point_double_edge ) * 0.1 / 3;
% 实际面积
fprintf('area_real_Simpson_interp1 = %2.20f\n',...
    area_Simpson_big - area_Simpson_small);

%% 作图
plot(x_real,y_upside_spline,'k-');
hold on;
plot(x_real,y_dowmside_spline,'k-');

plot(x_real,y_upside_interp1,'r-');
hold on;
plot(x_real,y_dowmside_interp1,'r-');
xlabel('X');
ylabel('Y');
text(6.5,1.3,'red:interp1');
text(6.5,1,'black:spline');
hold off;
