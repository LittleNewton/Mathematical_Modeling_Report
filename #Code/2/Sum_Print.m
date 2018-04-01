%   filename: Sum_Print
%   calculate the sum of QUANTITY NUM
function y = Sum_Print(num,quantity)
    sum_before = num;
    for i = 1: quantity
        sum_before = [sum_before,num];
    end
    y = sum(sum_before);
end