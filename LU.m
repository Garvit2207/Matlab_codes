clc
close all;
A = input("Enter the Matrix\n");
b = input("Enter RHS\n");
n = length(A);
m = eye(n);
x = zeros(n,1);
for i = 1:n-1
    for j = i+1:n
        m(j,i) = (A(j,i))/ (A(i,i));
        A(j,:) = A(j,:) - m(j,i)*A(i,:);
    end
end
L = m;
U = A;
y = inv(L)*b;
x= inv(U)*y;
disp(x);