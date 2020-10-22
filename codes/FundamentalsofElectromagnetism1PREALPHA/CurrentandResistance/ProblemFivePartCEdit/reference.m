%% symbolic variables and constants
%% Part C
syms J0 alp x y dA dx dy
J0 = 0.35; % A/m^2
alp = 2.1e-1; % 1/m
L = 3e-2; % m

J = J0 * exp(alp*x);
dI = J * dA;
dA = dx *dy;
I_y  = int(dI/dy, y,[0 L]);
I = int(I_y/dx , x,[0 L]);
I_rod = subs(I);

fprintf ( 'The current through the face of the rod is : %0.2e Amps \n' , I_rod);