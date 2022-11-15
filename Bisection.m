% Finding Root using bisection method
a = input('Initial Value a:-- ');
b = input('Initial Value b:-- ');
f = @(x) x^2 - 4*x - 2;
if f(a) * f(b) > 0
    disp('Wrong decision in choosing a & b.')
else
    m = (a + b) / 2;
    % e = abs(f(m));
    e = abs(b - a);
    while e > 1e-4
    if f(a) * f(m) < 0
        b = m;
    else
        a = m;
    end
    m = (a + b) / 2;
    % e = abs(f(m));
    e = abs(b - a);
    end
end
disp(m)





