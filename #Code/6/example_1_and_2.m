% filename: example_1_and_2
v1 = 1;v2 = 8;
fun_1 = @(x) 3 * sin(x) + x;
[x,fv] = fminbnd(fun_1,v1,v2);

fun_2 = @(x) x(1)^2 / 2 + x(2)^2 / 2;

[x,xx,xxx,xxxx] = fminunc(fun_2,[1,1]);
x
xxxx
[x_search,xx,xxx,xxxx] = fminsearch(fun_2,[1,1]);
x_search
xxxx