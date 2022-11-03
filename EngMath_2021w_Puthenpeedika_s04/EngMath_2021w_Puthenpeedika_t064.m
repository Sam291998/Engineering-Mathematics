% Samson David Puthenpeedika
n=2048;
fs=1024;
T=1/fs;
t = -1:T:1;
f = fs*(0:(n/2))/n;

X= 5.2*cos(2*pi*12*t) + 2.7*sin(2*pi*106*t);

F=zeros(1,length(t));

for i=1:length(t)
    if (t(i)>=-0.1) && (t(i)<=0.1)
        F(i)=1;
    else
        F(i)=0;
    end
end

C=conv(X,F,"same");

Xf=fft(X);
Xp=abs(Xf/n);
Xff=Xp(1:n/2+1);
Xff(2:end-1)=2*Xff(2:end-1);

Ff=fft(F);
Fp=abs(Ff/n);
Fff=Fp(1:n/2+1);
Fff(2:end-1)=2*Fff(2:end-1);

Cf=fft(C);
Cp=abs(Cf/n);
Cff=Cp(1:n/2+1);
Cff(2:end-1)=2*Cff(2:end-1);

subplot(2,3,1)
plot(t,X,"-","Marker",".",'LineWidth',1);       
xlim([-0.2 0.2])
title('Signal in time domain')
xlabel('t (seconds)')
ylabel('x(t)')

subplot(2,3,2)
plot(t,F,"-","Marker",".",'LineWidth',1);
xlim([-0.2 0.2])
title('Filter in time domain')
xlabel('t (seconds)')
ylabel('f(t)')

subplot(2,3,3)
plot(t,C,"-","Marker",".",'LineWidth',1);
xlim([-0.2 0.2])
title('Convolution of signal and filter in time domain')
xlabel('t (seconds)')
ylabel('C(t)')

subplot(2,3,4)
plot(f,Xff,"-",'LineWidth',1);
title('SSA Spectrum of signal x(t)')
xlabel('f (Hz)')
ylabel('|Xff(f)|')

subplot(2,3,5)
plot(f,Fff,"-",'LineWidth',1);
title('SSA Spectrum of filter f(t)')
xlabel('f (Hz)')
ylabel('|Fff(f)|')

subplot(2,3,6)
plot(f,Cff,"-",'LineWidth',1);
title('SSA Spectrum of convolutional signal C(t)')
xlabel('f (Hz)')
ylabel('|Cff(f)|')





