clear all;
clc;
a=[10 8 -3 1 16 ;2 10 1 -4 9;3 -4 10 1 10;2 2 -3 10 11];
x=[0 0 0 0];
n=4;
for i=1:n-1
    for j=i+1:n
        key=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-key*a(i,:);
    end
end
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+a(i,j)*x(j);
    end
    x(i)=(a(i,n+1)-sum)/a(i,i);
end
disp(x);