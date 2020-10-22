%% symbolic variables and constants
syms v th L N B dt positive

dA = v * dt * cos(th) * L; % area differential 
dphi = B * dA;
N = 1;
emf = N * dphi / dt;

% Substitution of values
q = 1.6e-19; % C
th = 0; % angle
L = 25e-2; % m
B = 0.25; % T
v = 5; % m/s
N = 1; % number of turns

% EMF
emf = subs(emf);
% Force 
F = q * v * B;
% E field 
E = emf / L;
% Velocity
vf = 5 / emf * 1;

fprintf('The magnetic force on an electron in the rod is : %0.2e N \n', F);
fprintf('The electric field in the rod is : %0.2f V/m \n', E);
fprintf('The potential difference between the ends of the rod is : %0.3f V \n', emf);
fprintf('The speed of the rod if the potential difference is 1.0 V is : %0.2f m/s \n', vf);