%% 
clc;
clear;
%% PROJECT NO 1 
% define fc,fs,simpling time,time,x(t),carrier 
fc = 10e3;
fs = 10*fc;
ts = 1/fs;
d= 1/fs;       
t =[0:200]*ts;
f=linspace(-fs/2,fs/2,length(t));
x = cos(2*pi*1000*t);
Ac = 1;
c = Ac* cos(2*pi*fc*t);         
%Amplitude Modulated signal y(t) and y(f)
y = x.*c;          
figure(1);
subplot(211)
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Message x(t)');
subplot(212)
plot(f,abs(fft(x)));
xlabel('frequency');
ylabel('Amplitude');
title('Message x(f)');
figure(2);
subplot(211)
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Modulated signal y(t) ');
subplot(212)
plot(f,abs(fft(y)));
xlabel('frequency')
;ylabel('Amplitude');
title('Modulated signal y(f) ');
w = y.*c; 
figure(3);
subplot(211)
plot(t,w);
xlabel('Time');
ylabel('Amplitude');
title('w(t)');
grid;
subplot(212)
plot(f,abs(fft(w)));
xlabel('frequency');
ylabel('Amplitude');
title('w(f)');
grid;
% define the cutoff frequency of the lowpass filter
fu = 2000;
% obtain the filter coefficients of a fifth order butterworth filter
[b,a] = butter(5,fu/(fs/2));
[H,omega] = freqz(b,a);
figure(4);
subplot(211)
semilogx(omega*fs,20*log10(abs(H)),'linewidth',2);
title('Magnitude response in dB ');
grid on;
xlabel('\omega rad/sec');ylabel('Magnitude in dB');
subplot(212)
semilogx(omega*fs,angle(H)*57.3,'linewidth',2);
title('Phase response');
grid on;
xlabel('\omega rad/sec');
ylabel('Degrees');
v = filter(b,a,w);
figure(5);
subplot(211)
plot(t,v);
xlabel('Time');
ylabel('Amplitude');
title('v(t)');
grid;
subplot(212)
plot(f,abs(fft(v)));
xlabel('frequency');
ylabel('Amplitude');
title('v(f)');
grid;