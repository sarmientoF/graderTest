%% symbolic variables and constants
syms v th L N B dt positive

dA = v * dt * cos(th) * L; % area differential 
dphi = B * dA;
N = 1;
emf = N * dphi / dt;

% Substitution of values
th = 0; % angle
R = 5; % Ohms
L = 4e-2; % m
B = 0.75; % T
v = 3; % m/s
N = 1; % number of turns

% EMF
emf = subs(emf);

I0 = emf/5;

fprintf('The current in the 5.0 Ohm resistor is : %0.3f A \n', I0);