
%% 10.sorunun cevabı
% A şıkkı

clc;
clear;


U=100000; %v
Ed=80000; %v/cm
Emax=Ed*0.6;
R1=(U/(Emax))/0.5;%cm
R2=2*R1;%cm

%B şıkkı

Emax=U/((R1/R2)*(R2-R1)); %V/cm
Emin=U/((R2/R1)*(R2-R1)); %V/cm
%C şıkkı

alfa=(R1/R2)*(R2-R1); %cm
d=R2-R1;%cm
n=alfa/d;

%D şıkkı

C=4*pi*(8.854*10^-12)*((R1*R2)/(R2-R1));%F

yakithacimi=(4/3)*pi*(R2^3-R1^3);%cm^3
