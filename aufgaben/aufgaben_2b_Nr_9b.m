p=[1,0,1];q=[0,1,0];
a=[0,1,1];
d=q-p;

c2=dot((q-p),(q-p));
c1=-2*dot((q-p),(p-a));
c0=dot((p-a),(p-a));

pol=[c2,c1,c0-4];
t=roots(pol)

r=p+t*d
