x=[0.03 0.06 0.1 0.14 0.19 0.21 0.23];
y=[16 28 47 63 84 90 96];
w=[20 34 50 68 85 92 96]
plot(x,w);
hold on


plot(x,y);
xlabel('I');
ylabel('E');
title('Yabancı Uyartımlı Dinamonun Boş Çalışma Karakteristik Eğrisi.');
legend('iniş','çıkış');