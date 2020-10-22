%% symbolic variables and constants
syms u0 N I(t) l A 

B = u0 * N * I / l;
phi = N * B * A;
emf = -diff(phi,t);
L = -emf / diff(I,t);

% Substitutions
N = 500; % number of turns
A = 2e-4; % m^2
l = 50e-2; % m
u0 = 1.257e-6; % H/m

L_sol = subs(L);
fprintf('The self-inductance of the solenoid is : %.2e H \n' , L_sol);