clear
clc
dt=0.01;
t=-5:dt:10;
% t=linspace(-5,10,1501);
x=2*t.^3-4*t.^2+50;
figure;
%subplot(2,1,1)
plot(t,x);
title('türev')
xlabel('t')
ylabel('x')
hold on
for i=1:length(x)-1
    dx(i)=x((i+1))-x(i);
end
dxdt=dx/dt;
dxdt=[dxdt dxdt(length(dxdt))];
% figure;
%subplot(2,1,2)
plot(t,dxdt);
 
z=[t(1) t(length(t))];
y=[0 0 ];
plot(z,y,'k');
z1=[x(1)-200 x(length(x))+300];
y1=[0 0];
plot(y1,z1,'k');

top=sum(x);
integral=top*dt


% z2=[-5 10];
% y2=[0 0 ];
% plot(z2,y2,'k');
% z12=[-100 600];
% y12=[0 0];
% plot(y12,z12,'k');
legend('x(t)','dx/dt(t)');
