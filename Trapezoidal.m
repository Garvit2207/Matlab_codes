f=@(x)(1/(x*log(x)));
a=input("input a");
b=input("input b");
n=input("enter n");
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+2*f(x);
end
sum=sum+f(a)+f(b);
sum=(h/2)*sum;
disp(sum);