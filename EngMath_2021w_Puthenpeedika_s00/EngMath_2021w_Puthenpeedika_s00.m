%Samson David Puthenpeedika%
%Medical Faculty Mannheim%
%Biomedical Engineering%
%3701503%

clc
theta=15:15:75;
a=theta*pi/180;
g=9.81;
y0=0;
v0=30;
x=0:5:100;
y= ((tan(a).*x')-((g.*(x.^2))./(2*(v0.^2)*(cos(a).^2))')'+y0);
figure
plot(x,y);
axis([0 100 0 80])
title('Heights vs Horizontal Distances')
xlabel('Horizontal Distance')
ylabel('Heights')
legend('15 degree','30 degree','45 degree','60 degree','75 degree');
