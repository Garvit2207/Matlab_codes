clc
close all;
x = input("Enter matrix ");
y = input("Enter values ");
x0 = input("Enter your point ");
n = max(size(x));

for i = 1:n
    d(i,1) = y(i);
end

for j = 2:n
    for i = j:n
        d(i,j) = (d(i,j-1)-d(i-1,j-1))/(x(i) - x(i-j+1))
    end
end
display(d)
sum = d(1,1);
prod = 1;

for i =2:n
    prod = prod*(x0-x(i-1));
    sum = sum + prod*d(i,i);
end
disp(sum);
f= @(x) exp(x);
disp(f(2.25));

