f=@(t,y)(y-t^2+1);
 t0=input("Enter the starting value: ");
 b=input("Enter the ending value: ");
 h=input("Enter the mesh length: ");
 y0=input("Enter initial value of y: ");
 n=(b-t0)/h;
 for i=1:n
     y1=y0+(h*f(t0,y0) + h*f(t0+h,y0 + h*f(t0,y0)))/2;
     t0=t0+h;
    y0=y1;
 end
y1