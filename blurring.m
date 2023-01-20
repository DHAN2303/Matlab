clc

z2=BW9(:,:,3);

figure; 
imagesc(z2); 
colormap gray;
n=4;
[q,w]=size(z2);
zb=zeros(q/n,w/n);

g=0;
for i=1:n:q-(n-1)
    g=g+1;
    h=0;
    for j=1:n:w-(n-1)
        h=h+1;
        a=z2(i:i+(n-1),j:j+(n-1));
        a=double(a);
        sum=0;
        for k=1:n
            for m=1:n
                sum=sum+a(k,m);
            end
        end
        ort=sum/n^2;
        zb(g,h)=uint8(ort);
    end
end

figure;
imagesc(zb);
colormap gray;

