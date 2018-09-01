%   plotting several graphics in one graph
%   filename: Subplot
x = -pi : 0.01 : pi;
y_1 = sin(x);
y_2 = cos(x);

subplot(2,2,1),plot(x,y_1);
title('sin(x)');
xlabel('X');
ylabel('sin(x)');

subplot(2,2,2),plot(x,y_2);
xlabel('X');
ylabel('cos(x)');
title('cos(x)');

subplot(2,2,3),plot(x,y_1 + y_2);
title('sin(x)+cos(x)');
xlabel('X');
ylabel('sin(x)+cos(x)');

subplot(2,2,4),plot(x,y_1 - y_2);
title('sin(x)-cos(x)');
xlabel('X');
ylabel('sin(x)-cos(x)');