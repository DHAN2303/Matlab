clear
clc
a=[1:50];
uc=1;
dort=1;
bes=1;
bolmaz=1;
for i=1:length(a)
    
    if rem(a(i),3)==0;
        ueebolen(uc)=a(i);
        uc=uc+1;
    elseif rem(a(i),4)==0;
        dortebolen(dort)=a(i);
        dort=dort+1;
    elseif rem(a(i),5)==0;
        besebolen(bes)=a(i);
        bes=bes+1;
    else
        bolunmayan(bolmaz)=a(i);
        bolmaz=bolmaz+1;
    end
    i=i+1;
end