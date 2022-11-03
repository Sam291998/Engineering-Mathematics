%Samson David Puthenpeedika

A =[5 7 -9; 1 8 4; 7 6 2];Fnorm(A);
z=norm(A,"fro");
disp("the corresponding output of MATLAB function norm(A,'fro')="+z);

function Norm = Fnorm(x)
a=sqrt(sum(x.^2,["all"]));
disp("output of Fnorm(A)= "+a);
end

