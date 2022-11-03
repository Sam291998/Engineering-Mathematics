%Samson David Puthenpeedika
A = 1; 
T = 0.25;
n = 6;
[t,f]= FourierSquare(A,T,n);

function [t,f] = FourierSquare(A0,T,k)
t = 0 : T/256 : 4*T;
n = length(t);
f = zeros(k,n);
s = zeros(n);
for i = 1:k
    for j = 1:n
        f(i,j)  = f(i,j) +   4*A0/((2*i-1)*pi)  *  sin(2*pi*(2*i-1)*t(j)/T);
        s(j) = s(j) + f(i,j);
    end
end
hold on
plot (t,f(1,:),'b:',"LineWidth",1);
plot (t,f(2,:),'r:',"LineWidth",1);
plot (t,f(3,:),'g:',"LineWidth",1);
plot (t,f(4,:),'m:',"LineWidth",1);
plot (t,f(5,:),'c:',"LineWidth",1);
plot (t,f(6,:),'y:',"LineWidth",1);

plot(t,s,'k-','linewidth',3);
xlabel("t");
ylabel("f(t)");
xticks(0:0.25:4*T);
hold off
end