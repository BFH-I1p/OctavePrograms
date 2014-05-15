%Vektoren zu Punkten A, B, C, D
pa=[0,-10,-6];
pb=[2,-11,8];
pc=[-4,1,7];
pd=[5,0,-1];

u=pb-pa; %Vektor in beiden Ebenen
v=pc-pa; %Vektor in Ebene 1
w=pd-pa; %Vektor in Ebene 2

n1=cross(u,v); %n-Vektor Ebene 1
d=-dot(n1,pa); %d=-n1.a
n2=cross(u,w); %n-Vektor Ebene 2
h=-dot(n2,pa); %h=-n2.a

%(ag-ec)*x+(bg-fc)*y+dg-hc=0
a=n1(0);
b=n1(1);
c=n1(2);
e=n2(0);
f=n2(1);
g=n2(2);

(ag-ec)*x+(bg-fc)*y+dg-hc=0;
