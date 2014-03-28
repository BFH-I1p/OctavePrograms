p=[1,0,1];q=[0,1,0];
a=[0,1,1];

d1=dot((q-p),(q-p));
d0=dot(p,(q-p));

pol=[d1,d0];
u=roots(pol)

r=p+u*(q-p)
