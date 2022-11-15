%Newton Method
clc;
close all;
syms x;
x0 = input('Enter initial guess:- ');
tol = 1e-3;
a = x - 2*sin(x);
error = 10;
f = inline(a);
dif = diff(sym(a));
d = inline(dif);
while error > tol
    x1 = x0 - ((f(x0) / d(x0)));
    error = abs((x1 - x0) / x1);
    x0 = x1;
end
fprintf("Root of equation:- %d\n", x1);