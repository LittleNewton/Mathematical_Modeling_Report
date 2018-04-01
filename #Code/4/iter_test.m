% filename: iter_test

clear all;clc
%- �������� -%
n = 20;
A1 = sparse(1:n,1:n,3,n,n);     % �Խ���Ԫ��
A2 = sparse(1:n-1,2:n,-1/2,n,n);
A3 = sparse(1:n-2,3:n,-1/4,n,n);
A = A1 + A2 + A2' + A3 + A3';

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

b = [1 : 20]';

B = (D - L)^(-1) * U;
f = (D - L)^(-1) * b;

x0 = zeros(20,1);
x1 = B * x0 + f;
count = 1;

while sum(abs(x1 - x0)) > 1e-6
    x0 = x1;
    x1 = B * x0 + f;
    count = count + 1;
    fprintf('�� %1.0f ��  [',count)
    for i = 1 : 20
        fprintf('%1.4f ',x0(i))
    end
    fprintf(']\n\n')
end

fprintf('��һ����ֵ\n')
clear all;
%- �������� -%
n = 20;
A1 = sparse(1:n,1:n,3,n,n);     % �Խ���Ԫ��
A2 = sparse(1:n-1,2:n,-1/2,n,n);
A3 = sparse(1:n-2,3:n,-1/4,n,n);
A = A1 + A2 + A2' + A3 + A3';

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

b = [1 : 20]';

B = (D - L)^(-1) * U;
f = (D - L)^(-1) * b;

x0 = ones(20,1);
x1 = B * x0 + f;
count = 1;

while sum(abs(x1 - x0)) > 1e-6
    x0 = x1;
    x1 = B * x0 + f;
    count = count + 1;
    fprintf('�� %1.0f ��  [',count)
    for i = 1 : 20
        fprintf('%1.4f ',x0(i))
    end
    fprintf(']\n\n')
    
end

fprintf('��һ��bֵ\n')
clear all;
%- �������� -%
n = 20;
A1 = sparse(1:n,1:n,3,n,n);     % �Խ���Ԫ��
A2 = sparse(1:n-1,2:n,-1/2,n,n);
A3 = sparse(1:n-2,3:n,-1/4,n,n);
A = A1 + A2 + A2' + A3 + A3';

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

b = [1 : 0.5 : 10.5]';

B = (D - L)^(-1) * U;
f = (D - L)^(-1) * b;

x0 = zeros(20,1);
x1 = B * x0 + f;
count = 1;

while sum(abs(x1 - x0)) > 1e-6
    x0 = x1;
    x1 = B * x0 + f;
    count = count + 1;
    fprintf('�� %1.0f ��  [',count)
    for i = 1 : 20
        fprintf('%1.4f ',x0(i))
    end
    fprintf(']\n\n')
    
end