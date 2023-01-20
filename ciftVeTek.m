clear
clc
k=1;
m=1;

a=rand(1,100)*100;

aa=round(a);

for i=1:length(aa)
    if rem(aa(i),2)==0
        
        cift(k)=aa(i);
        k=k+1;
    else
        tek(m)=aa(i);
        m=m+1;
    end
end
siralamat=tek;
siralamac=cift;
t=0;
k=0;
for i=1:length(siralamac)
    for j=1:length(siralamac)
        if siralamac(i)>siralamac(j)
            t=siralamac(i);
            siralamac(i)=siralamac(j);
            siralamac(j)=t;
           
        end
    end
end


for z=1:length(siralamat)
    for s=1:length(siralamat)
        if siralamat(z)>siralamat(s)
            k=siralamat(z);
            siralamat(z)=siralamat(s);
            siralamat(s)=k;
        end
    end
end
