% Rodrigues
% Rotation von P um n
m=[1, 1, 1];
alpha=2*pi/3;

n=m/norm(m);

N=[0,   -n(3),  n(2);...
   n(3), 0,    -n(1);...
  -n(2), n(1),  0];

I=eye(3,3);
R=I+N*sin(alpha)+N*N*(1-cos(alpha))

R*[1,0,0]'
R*[0,1,0]'
R*[0,0,1]'
