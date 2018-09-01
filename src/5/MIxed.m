% filename: Mixed

clc;clear all
n = 4;
P = 760;
a = [18.607, 15.841, 20.443, 19.293]';
b = [2643.31, 2755.64, 4628.96, 4117.07]';
c = [239.73, 219.16, 252.64 227.44]';
Q = [   1.0 ,0.192 ,2.169 ,1.611 
        0.316 ,1.0 ,0.477 ,0.524 
        0.377 ,0.360 ,1.0 ,0.296 
        0.524 ,0.282 ,2.065 ,1.0];
XT0 = [0.50 0.10 0.20 30];
[XT,Y] = fsolve(@azeofun,XT0,[],n,P,a,b,c,Q)

function f = azeofun(XT,n,P,a,b,c,Q)
    x(n) = 1;
    for i = 1 : n - 1
        x(i) = XT(i);
        x(n) = x(n) - x(i);
    end
    T = XT(n);
    p = log(P);
    for i = 1 : n
        d(i) = x * Q(i,1:n)';
        dd(i) = x(i) / d(i);
    end
    for i = 1 : n
        f(i) = x(i) * (b(i) / (T + c(i)) + ...
            log(x * Q(i, 1:n)') + ...
            dd * Q(1:n,i) - a(i) - 1 + p);
    end
end