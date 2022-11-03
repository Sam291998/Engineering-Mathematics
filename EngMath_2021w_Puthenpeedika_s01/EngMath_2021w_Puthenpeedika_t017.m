%Samson David Puthenpeedika


a=1011001;myb2d(a);
b=0.01011;myb2d(b);
c=110.01001;myb2d(c);
function bi2dec=myb2d(n)
LD_RD = @(x) [fix(x)  rem(x,1)];
f=LD_RD(n);
s=f(1);
h=f(2);
base1=num2str(s)-'0';
base2=num2str(h)-'0';
if length(base2)>1
base2(:,1:2)=[];
else
end
mult1 = ones(1,length(base1));
mult2 = ones(1,length(base2));
for k = 1:length(base1)
    mult1(1,k) = mult1(1,k)*2^(length(base1)-k);
end

for i = 1:length(base2)
    
    mult2(1,i) = mult2(1,i)*2^(-i);

end

part1= base1*mult1';

part2= base2*mult2';

base10 = part1+part2;
disp("Value in Base-10 : "+base10)
end





