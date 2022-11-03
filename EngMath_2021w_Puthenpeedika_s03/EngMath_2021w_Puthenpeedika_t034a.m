%Samson David Puthenpeedika

% Evaluate the following integral analytically
% integral(1-(e^(-x)))dx ;  upper limit: 4; lower limit: 0

% integral(1)dx - integral(e^(-x))dx  _______________________________eqn1

% a=integral(1)dx ;    b=integral(e^(-x))dx  ;_______________________eqn2


% Now for a=integral(1)dx;
% a= x + c;                            % 'c' is integration constant.
% Substituting upper limit: 4; lower limit: 0 , in above equation
a= 4-0;                                % 'c' gets cancelled out for definite integrals

% Now for  b=integral(e^(-x))dx;
% b= (e^(-x))/(-1) + c;                % 'c' is integration constant. 
% Substituting upper limit: 4; lower limit: 0 , in above equation
b= ((exp(-4))/(-1)) - ((exp(0))/(-1));   % 'c' gets cancelled out for definite integrals


% from eqn1 and eqn2
I= a-b;
disp("The Analytical result= "+I)

% Calling function from below
e=0;f=4;
h= (f-e)/2; 
Z=orap(e,f,h);

% the true percent relative error
ETrap=((I-Z(1))*100)/I;
ESimp=((I-Z(2))*100)/I;

% Displaying all the results in the console
disp("Integration using single application Trapezoidal rule= "+Z(1));
disp("Integration using single application Simpson's 1/3 rule= "+Z(2));
disp("the True percent relative error for Trapezoidal integration[E(trap)]= "+ETrap+"%");
disp("the True percent relative error for Simpson integration[E(simp)]= "+ESimp+"%");


% Trapezoidal Rule and Simpson's Rule in one function
function Z=orap(x,y,z)
c=(1-(exp(-x)));
d=(1-(exp(-y)));
g=(1-(exp(-z)));
P=(y-x)*((c+d)/2);
Q=(y-x)*((c+d+(4*g))/6);
Z=[P Q];
end
