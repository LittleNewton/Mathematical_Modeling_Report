function y = simp(x_input,y_input)
%   Simpson method for integration
    len = length(y_input);
    point_middle = [ y_input( 2 : 2 : len-1) ];
    sum_point_middle = sum(point_middle);

    point_double_edge = [ y_input( 3 : 2 : len-1) ];
    sum_point_double_edge = sum(point_double_edge);

    Value_Simpson = ...
        ( y_input(1) + y_input(len)...
            + 4 * sum_point_middle ...
            + 2 * sum_point_double_edge ) * (x_input(2) - x_input(1)) / 3;
    y = Value_Simpson;
end