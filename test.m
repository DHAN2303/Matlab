clc;
clear;

y=[20 19 18 17 16 15];
x=[0.04 0.08 0.12 0.16 0.20 0.24];
z=[20 22.2 24.4 27.6 28 29.4];
figure(1);
plot(x,y);
ylabel('U');
xlabel('I_u');
title('Şönt dinamonun dış karakteristik eğrileri');
hold on


plot(x,z);