function y = myfun(x)
    y = [];
    t = 0;
    for i = 1 : length(x)
        if(x(i) >= 0 & x(i) < 0.5)
            t = 2 * x(i);
            y = [y,t];
        else
            t = 2 * (1 - x(i));
            y = [y,t];
        end
    end
end
