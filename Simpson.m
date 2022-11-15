f=@(x)(( exp(-x^2)*cos(x)));
a=-1;
b=1;
n=input("enter n");
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    if rem(i,2)==0
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end

sum=sum+f(a)+f(b);
sum=(h/3)*sum;
fprintf("%d",sum);