%   filename: Compare_integral
%   compare the influence of STEP and TOL
x = 0 : 0.01 : 1;
y = 1 ./ (x + 1);
Value_real = log(2);
Value_trapz = trapz(x,y);
Value_Simpson_Pro =  quad('1./(x+1)',0,1);
%   Gauss-Lobatto(GL)
Value_GL = quadl('1./(x+1)',0,1);
%%  不同类型的数值积分对比
fprintf('Value_real - Value_trapz = %1.10f\n',...
    abs(Value_real - Value_trapz));
fprintf('Value_real - Value_Simpson_Pro = %1.10f\n',...
    abs(Value_real - Value_Simpson_Pro));
fprintf('Value_real - Value_GL = %1.10f\n',...
    abs(Value_real - Value_GL));
fprintf('------------------------------------------\n');
%%  New
x = 0 : 0.8 : 1;
y = 1 ./ (x + 1);
Value_real = log(2);
Value_trapz_wide = trapz(x,y);
Value_Simpson_Pro_wide =  quad('1./(x+1)',0,1,1e-12);
%   Gauss-Lobatto(GL)
Value_GL_wide = quadl('1./(x+1)',0,1,1e-12);
%%  不同类型的数值积分对比
fprintf('Value_real - Value_trapz = %1.10f\n',...
    abs(Value_real - Value_trapz_wide));
fprintf('Value_real - Value_Simpson_Pro = %1.10f\n',...
    abs(Value_real - Value_Simpson_Pro_wide));
fprintf('Value_real - Value_GL = %1.10f\n',...
    abs(Value_real - Value_GL_wide));