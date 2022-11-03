% Samson David Puthenpeedika
Txy = @(x)2*x(1)^2 + 3*x(2)^2 - 4*x(1)*x(2) - x(2) - 3*x(1);
options = optimset('PlotFcns',@optimplotfval);
x0 = [0,0];
[t,fval] = fminsearch(Txy,x0,options);

%Display in a new plot
[x1,y1] = meshgrid(-10:0.5:10);
Z = 2.*x1.^2+3.*y1.^2-4.*x1.*y1-y1-3.*x1;
figure()
mesh(x1,y1,Z);
hold on
fsurf(fval,[-10 10])
plot3(t(1),t(2),fval,'rx');

xlabel('x');
ylabel('y');
zlabel('T(x,y)');

title({"Minimum value of the function=  "+fval,"Location ("+t(1)+","+t(2)+")"})