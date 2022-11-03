% Samson David Puthenpeedika


% dy/dt= yt^2-1.1y
% dy/dt= y(t^2-1.1)
% 1/y*(dy)= (t^2-1.1)dt
% ln(y)= t^3/3 -1.1t +c
% for t=0 , y(0)=1 
% ln(1)= c
% c=0
% ln(y)= t^3/3 -1.1t
% y= exp(t^3/3 -1.1t)
T=0:0.25:1;
Y= zeros(size(T));
Y(1)=1;
N=numel(Y);
for i = 1:N-1
    Y(i+1)= exp((T(i+1)^3)/3-(1.1*T(i+1)));
end

% Euler's Method
h=0.5;
h1=0.25;
t=0:h:1;
t1=0:h1:1;
y=zeros(size(t));
y1=zeros(size(t1));
y(1)=1;
y1(1)=1;
n=numel(y);
n1=numel(y1);
for i = 1:n-1
    dydt= (y(i)*t(i).^2)-(1.1*y(i));
    y(i+1) = y(i)+(dydt*h);
end

for i = 1:n1-1
    dydt1= (y1(i)*t1(i).^2)-(1.1*y1(i));
    y1(i+1)=y1(i)+(dydt1*h1) ;
    
end


%Runge Kutta method
y2 = zeros(1,length(t));
y2(1) =1;   
n2= length(t);
y_dot =@(t,y2)((y2*t.^2)-(1.1*y2)); 

for i = 1:n2-1
    
    k1 = y_dot(t(i),y2(i));
    k2 = y_dot(t(i)+.5*h,y2(i)+.5*k1*h);
    k3 = y_dot(t(i)+.5*h,y2(i)+.5*k2*h);
    k4 = y_dot(t(i)+h,y2(i)+k3*h);
    y2(i+1) = y2(i)+((k1+2*k2+2*k3+k4)/6)*h;
    
end

plot(t,y,'r',"DisplayName","Euler's method for h=0.5","Marker","o");
hold on 
plot(t1,y1,'b',"DisplayName","Euler's method for h=0.25","Marker","o");
plot(T,Y,'k',"DisplayName","Anlaytical sol");
plot(t,y2,'g',"DisplayName","RK Method for h=0.5","Marker","o");
xlabel("T");
ylabel("Y");
grid on;
legend


