
%% 11.sorunun cevabı

% A şıkkı
clc;
clear;

R2=15;%cm
R1=0.5*R2;%cm
Ed=50+40*exp(-R1); %kv/cm

Umax=Ed*(R1/R2)*(R2-R1);%KV

%B şıkkı
Umax2=100; %KV

%'r1^2-(15*r1)+((Umax2*15)/Ed)=0'
p = [1 -15 ((Umax2*15)/Ed)];
r1 = roots(p)%cm

