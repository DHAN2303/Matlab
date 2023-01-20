
%% 15.sorunun cevabı

% A şıkkı
clc;
clear;

U=150;%kv
e1=20;%kv/cm
e2=8;%kv/cm

r1=U/(e1*log(e1/e2));%cm
r2=U/(e2*log(e1/e2));%cm

%B şıkkı
e0=8.854*10^-9;%pF/m
er=2.2;
l=1.2;%m
c=(2*pi*e0*er*l)/log(e1/e2);%pF

