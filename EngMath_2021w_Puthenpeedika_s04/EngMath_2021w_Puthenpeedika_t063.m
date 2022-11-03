%Samson David Puthenpeedika

n=64;
fs=128;
T=1/fs;
t = (0:n-1)*T;
f = fs*(0:(n/2))/n;

P= 1.5 + (1.8*cos(2*pi*(12)*t)) + (0.8*sin(2*pi*(20)*t)) - (1.25*cos(2*pi*(28)*t));
Y=fft(P);
PS=abs(Y/n);
PSS=PS(1:n/2+1);
PSS(2:end-1)=2*PSS(2:end-1);


subplot(2,1,1)
plot(128*t,P,"-.","LineWidth",1);
title('Power Spectrum Signal in time domain')
xlim([0 64]);
xlabel('t (seconds)')
ylabel('P(t)')

subplot(2,1,2)
stem(f,PSS,"filled");
xlim([0 64]);
title('Single-Sided Amplitude Spectrum of PS(t)')
xlabel('f (Hz)')
ylabel('|PSS(f)|')