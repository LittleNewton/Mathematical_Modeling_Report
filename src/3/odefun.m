%       filename: odefun
%       definition of the differential equation group
function dydt = odefun(t,y,r1,r2,n1,n2,s1,s2)
    dydt = zeros(2,1);
    dydt(1) = r1 * y(1) * (1 -  y(1) / n1 - s1 * y(2) / n2);
    dydt(2) = r2 * y(2) * (1 - s2 * y(1) / n1 - y(2) / n2);
end