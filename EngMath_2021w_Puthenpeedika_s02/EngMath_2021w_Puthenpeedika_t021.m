x=[1 2 2.5 3 4 5];
y=[0 5 7 6.5 2 0];
A=3.4;Lagrange(x,y,A)


function yint=Lagrange(x,y,xx)
A=3.4
n=length(x);
s=0
for i=1:n
    product=y(i);
    for j=1:n
        if i~=j
            product=product*(xx-x(j))/(x(i)-x(j));
        end
    end
    s=s+product;
   
end


yint=s;
figure()
plot(x,y)
hold on
scatter(A,yint,"x","b")
scatter(x,y,"o")
title('Lagrange Interpolation'); xlabel('x'); ylabel('f(x)');
c={A yint}
annotation('textarrow',[0.7 0.6],[0.7 0.64],'String',c)
hold off
legend('Interpolated Function','Result Point f(3.4)','Given Data');
hold off

end





