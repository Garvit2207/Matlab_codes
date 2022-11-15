%Secant method for computing underoot of a number
clc;
close all;
x0 = input('Enter first guess:- ');
x1 = input('Enter second guess:- ');
n = input('Number of iterations:- ');
tol = input('Enter tolerance:- ');
f = @(x) x^2 - 17;
i = 1;
while i <= n
    x2 = x1 - (x1 - x0)*f(x1) / (f(x1) - f(x0));
    if abs(x2 - x1) < tol
        break;
    end
    i = i + 1;
    x0 = x1;
    x1 = x2;
end
fprintf("Root of equation:- %d\n", x2);
