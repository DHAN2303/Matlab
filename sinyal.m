clear
clc

xp=[3 2 1 0 0 0 1 2];


z=1;
n1=40;
n2=-60;
a=1;
e=1;
q=0;
u=0;

while 0<n1
    
    for k=1:length(xp)
        x(a)=q;
        y(a)=xp(k);
        q=q+1;
        a=a+1;
        n1=n1-1;
        if n1==0
            break
        end
    end
    
end

stem(x,y,'b');
hold on

while (1>n2)
    
    for z=1:length(xp)
        o(e)=u;
        r(e)=xp(z);
        u=u-1;
        n2=n2+1;
        e=e+1;
        if n2==1
            break
        end
    end
    
end


hold on
stem(o,r,'b');

title('sinyal');
xlabel('x');
ylabel('y');

