%   filename: Euler_Forward_1
step = 0.1;
%%  The real graph
x = [0 : step : 1];
y = 3 * exp(x) - 2 * x - 2;
plot(x,y,'ro');
hold on;

%%  Euler Method
y_cal = [1];
y_0 = 1;
for i = 0.1 : step : 1
    tmp = y_0 + (y_0 + 2 * i) * step; 
    y_cal = [y_cal,tmp];
    y_0 = tmp;
end
plot(x,y_cal,'b-.');

%%  Runge-Kutta methods
tspan = [0 1];
y0 = 1;
[t,y] = ode23(@(t,y) 2 * t + y, tspan, y0);
plot(t,y,'-.k');
grid on
xlabel('X');
ylabel('Y');
legend('\fontsize{16}y - Real','\fontsize{16}y - Euler',...
    '\fontsize{16}y - Runge Kutta');