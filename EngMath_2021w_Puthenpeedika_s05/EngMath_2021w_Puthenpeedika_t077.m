% Samson David Puthenpeedika

n = 1000;
A = gallery( 'gcdmat', n );
b = (1 : n)';
tol=1e-8;
maxit=200;
I=eye(n);
[x,flag,relres,iter,resvec] = pcg(A,b,tol,maxit,I);

%the diagonal matrix
digA = diag(A);
D = diag(digA);
[x1,flg1,relres1,iter1,resvec1] = pcg(A,b,tol,maxit,D);

%the incomplete Cholesky preconditioner
icA = sparse(A);
L = ichol(icA);
[x2,flg2,relres2,iter2,resvec2] = pcg(A, b,tol,maxit, L, L');

%Display in a plot
figure
semilogy(0:length(resvec)-1,resvec/norm(b));     
hold on
l=[0.4 0.4];
m=[0.6 0.75];
n=[0.6 0.625];
o=[0.48 0.57];
p=[0.4 0.4];
q=[0.2 0.5];
str1=['Identity matrix, status: ', num2str(flag), '; iteration number: ', num2str(iter), '; relative residual error: ', num2str(relres)];
str2=['Diagonal elements, status: ', num2str(flg1), '; iteration number: ', num2str(iter1), '; relative residual error: ', num2str(relres1)];
str3=['Cholesky preconditioner, status: ', num2str(flg2), '; iteration number: ', num2str(iter2), '; relative residual error: ', num2str(relres2)];

annotation('textarrow',l,m,'String',str1);
annotation('textarrow',n,o,'String',str2);
annotation('textarrow',p,q,'String',str3);
semilogy(0:length(resvec1)-1,resvec1/norm(b));     
semilogy(0:length(resvec2)-1,resvec2/norm(b));        
yline(1e-8,'r--');
xlabel('Iterations'); ylabel('Relative residual histories (in a base-10 logarithmic scale)');
legend('Identity matrix','Diagonal elements','Cholesky preconditioner')
title('Preconditioned conjugate gradients');