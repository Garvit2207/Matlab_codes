a=0;
b=1;
f = @(t,y) -y + (2*cos(t));
t0=0;
y0=1;
h=0.2;
N=(b-a)/h;
for i=1:N
k1=h*f(t0,y0);
k2=h*f((t0 + h/2),(y0 + k1/2));
k3=h*f((t0 + h/2),(y0 + k2/2));
k4=h*f((t0 + h),(y0 + k3));
y1=y0 + (1/6)*(k1 + (2*k2) + (2*k3) + k4)
t0=t0+h;
y0=y1;
end