%% symbolic variables and constants
syms v th L N B dt positive

dA = v * dt * cos(th) * L; % area differential 
dphi = B * dA;
emf = N * dphi / dt;

% Substitution of values
th = 0; % angle
L = 5e-2; % % m
B = 0.5; % T
v = 8; % m/s
N = 1; % number of turns
emf = subs(emf);

fprintf('The potential difference between the ends of the rod is : %0.2f V \n', emf);