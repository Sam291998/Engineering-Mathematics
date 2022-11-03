%Samson David puthenpeedika

t= [1 2 3.25 4.5 6 7 8 8.5 9 10];
v= [5 6 5.5 7 8.5 8 6 7 7 5];
d=trapz(t,v);
disp("Distance Travelled= "+d);
D=cumtrapz(t,v);
Vavg=(D(10)-D(1))/(t(10)-t(1));
disp("Average velocity= "+Vavg);


subplot(2,1,1)
plot(t,D,'k',"DisplayName","Distance");
xlabel("Distance");
ylabel("Time")
title("Travelled Distance over Time");
legend("Location","best")

subplot(2,1,2)
plot(t,v,'b',"DisplayName"," Velocity");
hold on
xlabel("Velocity");
ylabel("Time");
title("Velocity over Time")
line([0,10],[Vavg,Vavg],'Color','red','LineStyle','--','DisplayName','Average Velocity= 6.6806');
hold off
legend("Location","best")


