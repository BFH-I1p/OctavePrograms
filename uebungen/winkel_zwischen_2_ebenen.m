%Vektoren zu Punkten A, B, C, D
a=[0,-10,-6];
b=[2,-11,8];
c=[-4,1,7];
d=[5,0,-1];

u=b-a; %Vektor in beiden Ebenen
v=c-a; %Vektor in Ebene 1
w=d-a; %Vektor in Ebene 2

n1=cross(u,v); %n-Vektor Ebene 1
k=-dot(n1,a);  %k=-n1.a
n2=cross(u,w); %n-Vektor Ebene 2
l=-dot(n2,a);  %l=-n2.a

cosA = dot(n1,n2) / (norm(n1)*norm(n2))
alpha=acos(cosA)/pi*180

%Grafik
x=linspace(-5,5,10);y=[-12,1,10];
[X,Y]=meshgrid(x,y);

Z=-1/n1(3)*(n1(1)*X+n1(2)*Y+k);
mesh(X,Y,Z)

Z=-1/n2(3)*(n2(1)*X+n2(2)*Y+l);
hold on
mesh(X,Y,Z)
hold off
