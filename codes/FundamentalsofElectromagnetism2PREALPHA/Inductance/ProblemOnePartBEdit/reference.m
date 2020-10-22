%% symbolic variables and constants
syms I(t) 
syms u0 N l A h k positive
syms R1 R2 r dr real
 
R2 = R1 * k; % K is the ratio of R2 and R1
A = R1 * R2;
B(r) = N * I *u0 / (2*pi*r);
dA = h * dr;
phi = int(N * B * dA, r,R1, R2) / dr;
emf = -diff(phi,t);
self_ind = -emf / diff(I,t); % The Self-Inductance 

% Substitutions
N = 2000; % number of turns
L = 0.04; % H
h = 0.1; % m
u0 = 1.257e-6; % H/m

k = solve(L == self_ind ,k);
K_sol = subs(k);
fprintf('The ratio of the outer radius to the inner radius of the rectangular toroid is : %0.2f \n' , K_sol);