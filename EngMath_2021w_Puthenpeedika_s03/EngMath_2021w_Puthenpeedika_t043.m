%Samson David Puthenpeedika


dy = @(t,x)[-(exp(-10/(x(2)+273)))*x(1);1000*exp(-10/(x(2)+273))*x(1)-10*(x(2)-20)];
int = [0 8];
[t,y] = ode45(dy, int, [1;15]);
figure
yyaxis left
plot(t,y(:,1)); 
ylabel('Concentration');
yyaxis right
plot(t,y(:,2));
ylabel('Temperature');
xlabel('Time');
title('Non-Isothermal Batch Reactor')