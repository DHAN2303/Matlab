clear
clc
n=[0:7];
n1=-20;
n2=35;
N=length(n);
xp=[3 2 1 0 0 0 1 2];
ii=1;

for n=n1:n2
    toplam=0;
    i=1;
    
    for k=0:N-1
        
        toplam=toplam+(a(i)*exp(-j*k*(2*pi/N)*ni)*n);
        i=i+1;
        
    end
    xr(ii)=toplam;
    ii=ii+1'
end

stem([n1:n2],abs(X));
title('X[k]');
xlabel('k');
ylabel('X');