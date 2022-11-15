a =[4.63 -1.21 3.22 ;-3.07 5.48 2.11;1.26 3.11 4.57];
   b =[2.22;-3.17;5.11];
    n =length (b);
   x =[0;0;0];
    err1 = Inf;
    maxerr = 1e-5;
  while ( err1> maxerr)
       x_old = x;
       for i =1:n
            sum =0;
           for j = 1 : i-1
             sum = sum + a(i,j)* x(j);
           end
           for j = i+1:n
              sum = sum + a(i,j) * x_old(j);
           end
          x(i)= (1/a(i,i))*( b(i) - sum);
        
       end
        err1 = abs( x_old-x);
end
disp(x);