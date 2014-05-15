% homogeneous coordinates
% author M.Stampfli 25.04.2010

% angle of rotation about center
phi=pi/3;
% center of rotation c=(c1,c2)
c1=-1; c2=-4;

% homogeneous rotation R and translation T
R=[cos(phi), -sin(phi), 0;...
   sin(phi), cos(phi),  0;...
   0,        0,         1];

% homogeneous translation T
T=[1,0,-c1;
   0,1,-c2;
   0,0, 1];

% Unit Square and its image
P=[0,1,1,0,0;
   0,0,1,1,0;
   1,1,1,1,1];

Q=inv(T)*R*T*P;

% Graphic representation of square
plot(P(1,:),P(2,:),'b','linewidth',2)
hold on

% Graphic representation of rotated square
plot(Q(1,:),Q(2,:),'r','linewidth',2)

% Drawing fat points in Octave is tedious !
plot(c1,c2,'linestyle','none','marker','o','linewidth',3,'markersize',3,'color','k');

% specification of view
axis([-8,2,-5,5],'square')
grid on

hold off
