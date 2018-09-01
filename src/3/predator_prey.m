%   filename: predator_prey
%   Testing the influence of the coefficients
%%  NO.1 default
tspan = [0 20];
opt=odeset('reltol',1e-6,'abstol',1e-9);
[t,y] = ode45(@odefun,tspan,[10,10],opt,1,1,100,100,0.5,2);
figure;
subplot(1,2,1);
plot(t,y(:,1),'b--',t,y(:,2),'r--');
grid on
xlabel('\fontsize{14}Time');
ylabel('\fontsize{14}Numbers');
legend('\fontsize{16}species 1','\fontsize{16}species 2');
title('\fontsize{16}NO.1 default')
subplot(1,2,2);
plot(y(:,1),y(:,2));
grid on;
xlabel('\fontsize{16}species 1');
ylabel('\fontsize{16}species 2');
legend('\fontsize{16}relative');

%%  NO.2 [r1, r2] --> [0.3, 0.3]
tspan = [0 20];
opt=odeset('reltol',1e-6,'abstol',1e-9);
[t,y] = ode45(@odefun,tspan,[10,10],opt,0.3,0.3,100,100,0.5,2);
figure;
subplot(1,2,1);
plot(t,y(:,1),'b--',t,y(:,2),'r--');
grid on
xlabel('\fontsize{14}Time');
ylabel('\fontsize{14}Numbers');
legend('\fontsize{16}species 1','\fontsize{16}species 2');
title('\fontsize{16}NO.2 [r1, r2] --> [0.3, 0.3]');
subplot(1,2,2);
plot(y(:,1),y(:,2));
grid on;
xlabel('\fontsize{16}species 1');
ylabel('\fontsize{16}species 2');
legend('\fontsize{16}relative');

%%  NO.3 [n1, n2] --> [200, 6000]
tspan = [0 20];
opt=odeset('reltol',1e-6,'abstol',1e-9);
[t,y] = ode45(@odefun,tspan,[10,10],opt,1,1,200,6000,0.5,2);
figure;
subplot(1,2,1);
plot(t,y(:,1),'b--',t,y(:,2),'r--');
grid on
xlabel('\fontsize{14}Time');
ylabel('\fontsize{14}Numbers');
legend('\fontsize{16}species 1','\fontsize{16}species 2');
title('\fontsize{16}NO.3 [n1, n2] --> [200, 6000]');
subplot(1,2,2);
plot(y(:,1),y(:,2));
grid on;
xlabel('\fontsize{16}species 1');
ylabel('\fontsize{16}species 2');
legend('\fontsize{16}relative');

%%  NO.4 [x0, y0] --> [5, 500]
tspan = [0 20];
opt=odeset('reltol',1e-6,'abstol',1e-9);
[t,y] = ode45(@odefun,tspan,[5,500],opt,1,1,100,100,0.5,2);
figure;
subplot(1,2,1);
plot(t,y(:,1),'b--',t,y(:,2),'r--');
grid on
xlabel('\fontsize{14}Time');
ylabel('\fontsize{14}Numbers');
legend('\fontsize{16}species 1','\fontsize{16}species 2');
title('\fontsize{16}NO.4 [x0, y0] --> [5, 500]');
subplot(1,2,2);
plot(y(:,1),y(:,2));
grid on;
xlabel('\fontsize{16}species 1');
ylabel('\fontsize{16}species 2');
legend('\fontsize{16}relative');

%%  NO.5 [s1, s2] --> [0.8, 0.7]
tspan = [0 20];
opt=odeset('reltol',1e-6,'abstol',1e-9);
[t,y] = ode45(@odefun,tspan,[10,10],opt,1,1,100,100,0.8,7);
figure;
subplot(1,2,1);
plot(t,y(:,1),'b--',t,y(:,2),'r--');
grid on
xlabel('\fontsize{14}Time');
ylabel('\fontsize{14}Numbers');
legend('\fontsize{16}species 1','\fontsize{16}species 2');
title('\fontsize{16}NO.5 [s1, s2] --> [0.8, 0.7]')
subplot(1,2,2);
plot(y(:,1),y(:,2));
grid on;
xlabel('\fontsize{16}species 1');
ylabel('\fontsize{16}species 2');
legend('\fontsize{16}relative');

%%  NO.6 [s1, s2] --> [1.5, 1.7]
tspan = [0 20];
opt=odeset('reltol',1e-6,'abstol',1e-9);
[t,y] = ode45(@odefun,tspan,[10,10],opt,1,1,100,100,1.5,1.7);
figure;
subplot(1,2,1);
plot(t,y(:,1),'b--',t,y(:,2),'r--');
grid on
xlabel('\fontsize{14}Time');
ylabel('\fontsize{14}Numbers');
legend('\fontsize{16}species 1','\fontsize{16}species 2');
title('\fontsize{16}NO.6 [s1, s2] --> [1.5, 1.7]')
subplot(1,2,2);
plot(y(:,1),y(:,2));
grid on;
xlabel('\fontsize{16}species 1');
ylabel('\fontsize{16}species 2');
legend('\fontsize{16}relative');

%%  NO.7 [s1, s2] --> [1.9, 1.7]
tspan = [0 20];
opt=odeset('reltol',1e-6,'abstol',1e-9);
[t,y] = ode45(@odefun,tspan,[10,10],opt,1,1,100,100,1.9,1.7);
figure;
subplot(1,2,1);
plot(t,y(:,1),'b--',t,y(:,2),'r--');
grid on;
xlabel('\fontsize{14}Time');
ylabel('\fontsize{14}Numbers');
legend('\fontsize{16}species 1','\fontsize{16}species 2');
title('\fontsize{16}NO.7 [s1, s2] --> [1.9, 1.7]')
subplot(1,2,2);
plot(y(:,1),y(:,2));
grid on;
xlabel('\fontsize{16}species 1');
ylabel('\fontsize{16}species 2');
legend('\fontsize{16}relative');