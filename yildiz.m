clear
clc

x=-100:100;
    y=x.^2;
    plot(x,y)
hold on
yildizi=20;
for i=x(1):length(x)/yildizi:x(length(x))
    j=i.^2;
    plot(i,j,'r*')
end

