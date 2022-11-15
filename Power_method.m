format short
close all;
clc;
A = [4 1 0; 1 20 1; 0 1 4];
x = [1; 1; 1];
maxi = 50;
maxerr = 1e-2;
lam1 = Inf;
i = 1;
B = A;
err = 10000;
fprintf ('Iter \t Eigen Value \t EigenVector \n');
while all(err > maxerr)
    xold = x;
    Y = B*x;
    eigval = max(abs(Y));
    eigvec = Y./eigval;
    x = eigvec;
    err = abs(sum(xold-x));
    lam1 = eigval;
    disp([i lam1 x']);
    i = i + 1;
end
fprintf('Method converge in %d iteration \n', i - 1);
disp('===================');
fprintf('The greatest eigenvalue is %5.5f\n', lam1);
disp ('The corresponding eigenvector is:');
fprintf ('\t %5.5f \n', x);