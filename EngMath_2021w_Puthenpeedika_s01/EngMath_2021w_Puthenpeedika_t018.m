%Samson David Puthenpeedika

x1 = 1;
f1= (25*(x1^3))-(6*(x1^2))+(7*x1)-88;

x3 = 3;
f3= (25*(x3^3))-(6*(x3^2))+(7*x3)-88;
disp("True VALUE= "+f3)


df1=(75*(x1^2))-(12*x1)+7;
df2=(150*x1)-12;
df3=150;

%zero order
z0 = f1;
Et0 = abs((f3-z0)/f3)*100;
disp("Approoximate of zero order= "+z0);
disp("true percent relative error= "+Et0);


%first order
z1 = z0+df1/factorial(1)*(x3-x1)^1;
Et1 = abs((f3-z1)/f3)*100;
disp("Approoximate of first order= "+z1);
disp("true percent relative error= "+Et1);

%second order
z2 = z1+df2/factorial(2)*(x3-x1)^2;
Et2 = abs((f3-z2)/f3)*100;
disp("Approoximate of second order= "+z2);
disp("true percent relative error= "+Et2);

%third order
z3 = z2+df3/factorial(3)*(x3-x1)^3;
Et3 = abs((f3-z3)/f3)*100;
disp("Approoximate of third order= "+z3);
disp("true percent relative error= "+Et3);




