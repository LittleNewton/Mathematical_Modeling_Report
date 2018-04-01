%   filename: Euler_Forward_3
step = 0.1;
%%  The real graph
x = [pi / 2 : step : 5 * pi];
y = sin(x) .* sqrt(2 * pi ./ x);
plot(x,y,'ro');
hold on;

%%  Euler method
y_0 = 2;
dy_0 = - 2 / pi;
y_cal = [];
n = 0.5;
for i = pi / 2 : step : 5 * pi
    ddy_0 = ( - i * dy_0 - (i^2 - n^2) * y_0 ) / i^2;
    % get the value of the second derivative test
    y_0 = y_0 + step * dy_0;
    dy_0 = dy_0 + ddy_0 * step;
    % get the value of the first derivative test by the second
    y_cal = [y_cal,y_0];
end
plot(x,y_cal,'k-.');
grid on;
%%  Runge-Kutta method
tspan = [pi/2, 5 * pi];
[t,y] = ode45(@vdp1,tspan,[2;-2 / pi]);
plot(t,y(:,1),'b--');
title('Solution of Bessel Equation (n = 1) with ODE45');
xlabel('Time t');
ylabel('Solution y');
legend('\fontsize{16}y Real','\fontsize{16}y Euler Method',...
    '\fontsize{16}y Runge Kutta');
hold off;