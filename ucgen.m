% plot([0,10],[0,10],'k.')
% k=9
% hold on 
% for y=1:9
%     x1=((y-9)/tan(70*pi/180))+5;
%     x2=((y-9)/tan(-70*pi/180))+5;
%     a=linspace(x1,x2,k);
%     b=y*ones(1,k);
%     plot(a,b,'r*')
%     k=k-1
% end

% plot([0,10],[0,10],'k.')
% k=9
% hold on 
% for y=1:9
%     x1=y;
%    for j=1:9
%        x2=j;
% %     a=linspace(x1,x2,k);
% %     b=y*ones(1,k);
%     plot(x1,x2,'r*')
%     k=k-1
%    end
% end

plot([0,10],[0,10],'k.');
k=30
hold on 
for y=k:-1:1
    x1=((y-1)*tan(-70*pi/180))-5;
    x2=((y-1)*tan(70*pi/180))-5;
    a=linspace(x1,x2,k);
    b=y*ones(1,k);
    plot(a,b,'r*')
    k=k-1;
end