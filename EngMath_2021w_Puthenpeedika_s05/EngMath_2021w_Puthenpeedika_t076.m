% Samson David Puthenpeedika

x=2:0.01:20;
f=sin(x)+sin((2/3)*x);
fun=@(x)sin(x)+sin((2/3)*x);
options=optimset('Display','iter');
[X,fval]=fminbnd(fun,4,8,options);
plot(x,f);
hold on 
scatter(X,fval,'Marker','x');
a = [0.4 0.29];
b = [0.3 0.275];
str = {X fval};
annotation('textarrow',a,b,'String',str);     
title('Single-variable function on fixed interval');
xlabel('x'); ylabel('f(x)');
hold off

