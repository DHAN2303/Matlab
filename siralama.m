clear 
clc

a=rand(1,10)*100;

siralamaa=round(a);


t=0;
for i=1:length(siralamaa)
    for j=1:length(siralamaa)
        if(siralamaa(i)>siralamaa(j))
            t=siralamaa(i);
            siralamaa(i)=siralamaa(j);
            siralamaa(j)=t;
        end
    end
end
