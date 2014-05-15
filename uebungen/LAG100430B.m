% homogeneous coordinates
% author M.Stampfli 25.04.2010

% angle of rotation about center
phi=pi/12;
% scaling factor
s1=0.9; s2=0.9;

% homogeneous rotation and scaling
R=[cos(phi),-sin(phi),0;...
   sin(phi), cos(phi),0;...
   0,        0,       1];

S=[s1,0,0;...
   0,s2,0;...
   0,0,1];

% Unit Square
P=[0,1,1,0,0;0,0,1,1,0;1,1,1,1,1];
plot(P(1,:),P(2,:),'g','linewidth',4)
axis([-8,2,-5,5],'square')
hold on

% Iterative images of linear application
for i = 1:40
  Q=S*R*P;
  plot(Q(1,:),Q(2,:),'k','linewidth',1)
  P=Q;
end;

axis([-1,1,-.5,1.5],'square')
axis equal


% Save picture as *.png file
%print('LinearSpiral.png','-dpng');
