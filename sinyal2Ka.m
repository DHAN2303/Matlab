clear
clc
n=[0:9];
n_bas=n(1);
n_son=n(length(n));
N=length(n);
xp=[3 1 0 -5 9 6 -2 4 -8 1];
stem(n,xp);
n1=-20;
n2=30;
toplam=0;
i=1;

k1=0;
k2=N-1;
ki=1;
for k=k1:k2,
    toplam=0;
    i=1;
    for ni=n_bas:n_son,
        
        toplam=toplam+exp(-j*k*2*pi/N*ni)*xp(i);
        i=i+1;
        
        
    end
    a(ki)=1/N*toplam;
    ki=ki+1;
end
figure;
stem([k1:k2],abs(a));
title('X[k]');
xlabel('k');

ii=1;

for n=n1:n2,
%     toplam=0;
%     i=1;
%     
%     for k=0:N-1,
%         
%         toplam=toplam+(a(i)*exp(j*k*2*pi/N*n));
%         i=i+1;
%         
%     end

    xr(ii)=a*exp(j*[0:N-1]'*2*pi/N*n);
    ii=ii+1;
end
figure;
stem([n1:n2],xr);
title('FS ile oluşturan sinyal');
