clc;
clear;
p=[1 2 1];
q=[0 1 1];

conv=conv(p,q);
ofp=roots(p);
ofq=roots(q);
valp=polyval(p,-1);
valq=polyval(q,6);

b1=[2 5 3 6];
a1=[1 6 11 6];
b2=[1 2 3];
a2=[1 3 3 1];

[r,p,k]=residue(b1,a1);
[r2,p2,k2]=residue(b2,a2);