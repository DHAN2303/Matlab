
%% project 2 
%message signal
load handel
m = y;
soundsc(m,Fs);
%m(t) signal is defined between 0≤ t ≤ 9 s. (f c =100KHz)
t=0:1/Fs:(length(m)-1)/Fs;
%the signals message signal
figure(1);
plot(t,y);
title('Message Signal');
xlim([0 10e-3]);
grid;
%the signals carrier signal
Fs1 = 1e6;
t=0:1/Fs1:(length(m)-1)/Fs1;
c = cos(2*pi*100e3*t);
figure(2);
plot(t,c);
title('Career Signal');
xlim([0 5]*1e-4);
grid;
%the signals m USB (t) and m udb(f);
mUSB = y(1:length(t))'.*c;
figure(3);
plot(t,mUSB);
xlim([0 5]*1e-4);
title('mUSB Signal at time domain');
ylim([-0.3 0.3]);
grid;
figure(4);
fftmUSB=fft(mUSB);
f = (0:length(fftmUSB)-1)*Fs/length(fftmUSB);
plot(f,fftmUSB);
title('mUSB Signal at Frequency domain');
%the signals y USB (t) and yusb(f)
y = lowpass(mUSB,2e3,Fs1);
figure(5);
plot(t,y);
xlim([0 5]*1e-4);
title('Demodulated Signal at time domain');
grid;
fftYusb=fft(y);
figure(6);
f = (0:length(y)-1)*Fs/length(y);
plot(f,fftYusb);
title('Demodulated Signal at Frequency domain');
pause(10);
soundsc(y,Fs);