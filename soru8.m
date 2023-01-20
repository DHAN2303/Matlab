
%% 8.sorunun cevabı

% A şıkkı
clc;
clear;

R2=0.5;%cm
R1=0.4;%cm
R=1.2;%cm
Er1=1;
Er2=2.3;
U=45; %kv

A=(((1/Er1)*log(R2/R1))+((1/Er2)*log(R/R2)));

U1=(log(R2/R1)/Er1)*U/A; %kv
U2=(log(R/R2)/Er2)*U/A; %kv


%B şıkkı

E1max=U1/(R1*log(R2/R1)); %KV/cm
E2max=U2/(R2*log(R/R2)); %KV/cm


%C şıkkı

c=(2*500*10^-5*pi*8.854*10^-9)/A; %nF

%D şıkkı
Ed1=30;%kv/cm
Ed2=60;%kv/cm

Ud1max=Ed1*R1*log(R2/R1); %kv
E2max2=U/(R2*log(R/R2));%kv

if E1max>Ud1max
    if E2max2>Ed2
        disp('sistem delinir.')
    else 
        disp('sistem delinir değildir.')
    end
else 
    disp('sistem delinir değildir.')
end
    

