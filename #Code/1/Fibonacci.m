function y = Fibonacci(head_1,head_2,number)
%	FIBONACCI	a progression
%   filename: Fibonacci
	y = [head_1,head_2];
	for i = 1 : (number - 2)
		y = [y,head_1 + head_2];
        tmp = head_1;
        head_1 = head_2;
		head_2 = head_2 + tmp;
	end
end