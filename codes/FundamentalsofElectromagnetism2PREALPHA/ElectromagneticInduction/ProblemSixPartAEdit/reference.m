%% symbolic variables and constants
syms v l a b I u0 r v positive
syms dx

B = u0 * I / (2 * pi *r);
Dphi = int(B,r,b,b + a) * dx;
dt = dx / v;
emf = 1 * Dphi / dt;

fprintf('The emf induced in the rod is : \n');
pretty(emf)