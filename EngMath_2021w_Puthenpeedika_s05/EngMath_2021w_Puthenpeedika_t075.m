% Samson David Puthenpeedika

% f(x) = (-1.5*x^6) - (2*x^4) + (12*x)

% Taking first and second derivative
% f'(x)= (-9*x^5) - (8*x^3) + (12)
% f"(x)= (-45*x^4) - (24*x^2)

% Taking second derivative equation and equating with zero for value of x
% (-45*x^4) - (24*x^2)= 0
% (-3x^2) *((15*x^2) + (8))= 0

% Roots of x= 0,0.730296,-0.730296

% Substitutinng the roots in the second derative equation and comparing with zero
x1=0;
x2=0.730296;
x3=-0.730296;
f_r1= (-45*x1^4) - (24*x1^2);
f_r2= (-45*x2^4) - (24*x2^2);
f_r3= (-45*x3^4) - (24*x3^2);

% when x=0 ,         f"(x)=0
% when x= 0.730296 , f"(x)=-25.5999 <0 ; the function  is concave
% when x=-0.730296 , f"(x)=-25.5999 <0 ; the function  is concave

% f'(x)= (-9*x^5) - (8*x^3) + (12);         for the maximum f(x)


a=[-9 0 -8 0 0 12];
A= roots(a);
Real_A=real(A);
fA= (-1.5*A.^6) - (2*A.^4) + (12*A);
Real_fA=real(fA);

x=-1:0.01:2;
f= (-1.5*x.^6) - (2*x.^4) + (12*x);
plot(x,f);
hold on
scatter(max(Real_A),max(Real_fA),"Marker","x");
a = [0.6 0.625];
b = [0.7 0.845];
str = {max(Real_A) max(Real_fA)};
annotation('textarrow',a,b,'String',str);     %annotation pointing
title('Root Location Method');
xlabel('x'); ylabel('f(x)');
hold off


