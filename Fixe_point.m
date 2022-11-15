% Smallest and second smallest positive roots of the equation
clc;
close all;
x = input('Enter initial value:- ');
tol = input('Enter tolerance:- ');
n = input('Enter number of iterations:- ');
%f = @(x) tan(x) / 4;
f = @(x) atan(4*x);
y = f(x);
N = 1;
while N <= n
    x = y;
    y = f(x);
    if abs(x -y) < tol
        break;
    end
    N = N + 1;
end
fprintf("1st smallest root:- %d\n", y);
N = 1;
f = @(x) x + (1 / tan(x)) - (1 / (4*x));
x = input('Enter initial value:- ');
y = f(x);
while N <= n
    x = y;
    y = f(x);
    if abs(x -y) < tol
        break;
    end
    N = N + 1;
end
fprintf("2nd smallest root:- %d", y);
