%   filename: Euler_Forward_2
%%  欧拉向前方法
step = 0.1;
y_0 = 0;
y_1 = [];
x = -5 : step :5;
for i = -5 : step : 5
    y_1 = [y_1,y_0];
    y_0 = y_0 + (i^2 - y_0^2) * step;
end
plot(x,y_1,'r-o')
hold on;

%%  Runge-Kutta methods
tspan = [-5 5];
y0 = 0;
[t,y] = ode23(@(t,y) t^2 - y^2, tspan, y0);
plot(t,y,'b-.');
tspan = [-5 5];
grid on
xlabel('X');
ylabel('Y');
legend('\fontsize{18}y - Euler','\fontsize{18}y - Runge Kutta');