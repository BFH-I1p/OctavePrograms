% Aufgabe 1
% Schnittpunkt einer Gerade mit Ebene

% Gerade
p=[3,-4,-1];
q=[2,-1,-1];

% Ebene
n=[2,-1,3];
k=1;

c1=dot(n,q);
c0=dot(n,p) + k;

pol=[c1, c0];
u=roots(pol)

r=p+u*q
