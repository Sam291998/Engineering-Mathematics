%Samson David Puthenpeedika

L=[1 0 0;0.6667 1 0;-0.3333 -0.3636 1];
U=[3 -2 1;0 7.3333 -4.6667;0 0 3.6364];
D1=det(L);
D2=det(U);
D3=D1*D2;
bT = [-10 44 -26];
b=bT';

d=L\b;
X=U\d;

disp("Determinant of L = "+D1);
disp("Determinant of U = "+D2);
disp("Determinant of A = "+D3);
disp("d= ");disp(d)
disp("X= ");disp(X)
