%Samson David Puthenpeedika

x=[1 2 2.5 3 4 5];
y=[1 5 7 8 2 1];
xx=linspace(0,6);
yy=spline(x,y,xx);
ychip= pchip(x,y,xx);
scatter(x,y,'k',"filled","DisplayName","Data Points");
hold on
plot(xx,yy,"DisplayName","Cubic Spline","Color","r");
plot(xx,ychip,'--',"DisplayName","Cubic Hermite","Color","b");
title("Cubic Spline and Piecewise Hermite Interpolation")
xlabel("X");
ylabel("F(x)")
hold off
legend("Location","northeast");