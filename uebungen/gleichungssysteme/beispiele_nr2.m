## Tripod
## Punkte des Dreibeins
a=[4,1,0];
b=[0,3,0];
c=[2,5,0];
d=[0,0,7];

ad = d-a;
bd = d-b;
cd = d-c;

## Einheitsvektoren im Dreibein
ae = ad/norm(ad);
be = bd/norm(bd);
ce = cd/norm(cd);

## M=[ae(1), be(1), ce(1);
##    ae(2), be(2), ce(2);
##    ae(3), be(3), ce(3);];

## Koeffizientenmatrix M
## Konstantenvektor F = Kraft die auf Dreibein wirkt
M=[ae', be', ce'];
F=[120, 159, 0];

## Erweiterte Koeffizientenmatrix & Lösung
MF = [M, -F']
I=[inv(M)*-F']
