% filename: Jacobi
A = [9 -1 -1;-1 10 -1;-1 -1 15];
b = [7;8;13];

D = diag(diag(A));
L = -1 * tril(A,-1);
U = -1 * triu(A,1);

B = D^(-1) * (L + U);
f = D^(-1) * b;

x = [0 0 0]';
for k = 1 : 4
    x = B * x + f;
end
fprintf('%1.4f\n',x);