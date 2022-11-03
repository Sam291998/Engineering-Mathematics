% Samson David Puthenpeedika

f = [-30 -10];
A=[6 3;3 -1;1 0.25];
b=[40 0 4];
lb = zeros(2,1);
ub = [];
Aeq = [];
beq = [];

Tstart1=tic;
options = optimoptions('linprog','Algorithm','dual-simplex','Display','iter');
[sol,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub,options);
disp("Optimum Location X1 : "+sol(1))
disp("Optimum Location X2 : "+sol(2));
disp("Optimum Value= "+(-fval));
Tend1=toc(Tstart1);
disp("elapsed time for dual-simplex method: "+Tend1+" secs")

Tstart2=tic;
options1 = optimoptions('linprog','Algorithm','interior-point','Display','iter');
[sol1,fval1,exitflag1,output1] = linprog(f,A,b,Aeq,beq,lb,ub,options1);
disp("Optimum Location X1 : "+sol1(1));
disp("Optimum Location X2 : "+sol1(2));
disp("Optimum Value= "+(-fval1));
Tend2=toc(Tstart2);
disp("elapsed time for interior-point method: "+Tend2+" secs");

[X1,X2]=meshgrid(0:0.02:100,0:0.02:100);
cons1= 6*X1 + 3*X2 <= 40;
cons2= 3*X1 - X2<=0 ;
cons3= X1 + 0.25*X2 <= 4;
X1(~cons1)= NaN;
X1(~cons2)= NaN;
X1(~cons3)= NaN;
X2(~cons1)= NaN;
X2(~cons2)= NaN;
X2(~cons3)= NaN;
f= 30*X1 + 10*X2;
mesh(X1,X2,f);
hold on
plot3(sol(1),sol(2),-fval,'x','Color','r','LineWidth',1)
plot3(sol1(1),sol1(2),-fval1,'+','Color','b','LineWidth',1)
title({"Optimum Location X1: "+sol(1)+"     "+"Optimum Location X2: "+sol(2); "Optimum Value = "+(-fval);"Elapsed time for dual simplex method="+Tend1+" secs";"Elapsed time for interior-point method="+Tend2+" secs"});
hold off