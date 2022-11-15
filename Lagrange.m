clc
close all;

n = input("Enter n");
p = input("Enter point");
for i =1:n
    x(i) = input("Enter X(i)");
    y(i) = input("Enter Y(i)");
end
for i = 1:n
    l(i) = 1;
    for j=1:n
        if(j~=i)
            l(i) = (p - x(j))*l(i)/(x(i) - x(j));
        end
    end
end
sum = 0;
for i =1:n
    sum = sum + l(i)*y(i);
end
disp(sum);
