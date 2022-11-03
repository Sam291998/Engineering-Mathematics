%Samson David Puthenpeedika

x=[0 2 4 6 9 11 12 15 17 19];
y=[5 6 7 6 9 8 8 10 12 12];
n=length(x);

p=polyfit(x,y,1);
least_sqr_points= polyval(p,x);
a1=p(1);
a0=p(2);
disp("Slope (y versus x) = "+a1);
disp("Intercept (y versus x) = "+a0);
Sr=sum((y-a0-(a1.*x)).^2,["all"]);
ybar=sum(y,["all"])/length(y);
St=sum((y-ybar).^2);
Syx=sqrt(Sr/(n-2));
r2=(St-Sr)/St;
r=sqrt(r2);
disp("Standard error of the estimate (y versus x) = "+Syx);
disp("Correlation Coefficient (y versus x) = "+r);

figure()
scatter(x,y,"filled","DisplayName","Data Points");
hold on
plot(x,least_sqr_points,"DisplayName","Regression Line");
title('Least Squares Regression  (y versus x)');
xlabel("X");
ylabel("Y");
%annotation('textbox', [0.75, 0.1, 0.1, 0.1], 'String', "Regression line:  "+least_sqr_points)
hold off
legend("Location","southeast");

k=polyfit(y,x,1);
least_sqr_points_2= polyval(k,y);
a_1=k(1);
a_0=k(2);
disp("Slope (x versus y) = "+a_1);
disp("Intercept (x versus y) = "+a_0);
S_r=sum((x-a_0-(a_1.*y)).^2,["all"]);
x_bar=sum(x,["all"])/length(x);
S_t=sum((x-x_bar).^2);
S_yx=sqrt(S_r/(n-2));
r_2=(S_t-S_r)/S_t;
r_0=sqrt(r_2);
disp("Standard error of the estimate (x versus y) = "+S_yx);
disp("Correlation Coefficient (x versus y) = "+r_0);


figure()
scatter(y,x,"filled","DisplayName","Data Points")
hold on
plot(y,least_sqr_points_2,"DisplayName","Regression Line")
title('Least Squares Regression  (x versus y)')
xlabel("Y");
ylabel("X");
%annotation('textbox', [0.75, 0.1, 0.1, 0.1], 'String', "Regression line:  "+least_sqr_points)
hold off
legend("Location","southeast");
