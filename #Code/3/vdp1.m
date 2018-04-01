function dydt = vdp1(t,y)
    dydt = [y(2);-1 * (t * y(2) + (t^2 - 0.5^2) * y(1)) / t^2];
end