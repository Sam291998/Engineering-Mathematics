%Samson David Puthenpeedika




%q1==1
%q2+q3=q1 .... q2+q3=1       ----------eqn1
%q4+q5=q3 ....-q3+q4+q5=0    ----------eqn2
%q6+q7=q5 ....-q5+q6+q7=0    ----------eqn3
%-2q2+q3+2q4=0   ----------------------eqn4
%-2q4+q5+2q6=0   ----------------------eqn5
%-2q6+3q7=0      ----------------------eqn6


% AX=B;

q1=1;


% LHS of all equation in matrix form
A=[1 1 0 0 0 0;
    0 -1 1 1 0 0;
    0 0 0 -1 1 1;
    -2 1 2 0 0 0;
    0 0 -2 1 2 0;
    0 0 0 0 -2 3];

% RHS of all eqn in matrix form
B=[1;0;0;0;0;0];

% Matrix division
X=A\B;

disp("Q1= "+q1)
disp("Q2= "+X(1));
disp("Q3= "+X(2));
disp("Q4= "+X(3));
disp("Q5= "+X(4));
disp("Q6= "+X(5));
disp("Q7= "+X(6));




