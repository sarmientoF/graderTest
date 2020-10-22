%% symbolic variables and constants
syms v l a b I u0 r v positive
syms dx
syms D R B(t)
syms dth th r dB dt E

l = sqrt(R^2 -D^2) * tan(th);
dl = diff(l,th) * dth;
r = sqrt(R^2 -D^2) / cos(th);
E = r / 2 *dB/dt; 
E_l = E * cos(th);
dV = E_l * dl;
emf = int(dV / dth ,th);
thMax = atan(D / sqrt(R^2 -D^2));
emf = subs(emf,th,thMax) - subs(emf,th,-thMax);

fprintf('The emf induced between the end of the rod is : \n');
pretty(emf)