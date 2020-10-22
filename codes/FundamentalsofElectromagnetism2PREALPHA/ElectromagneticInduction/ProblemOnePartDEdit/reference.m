%% symbolic variables and constants
syms v th L N B dt positive

dA = v * dt * cos(th) * L; % area differential 
dphi = B * dA;
N = 1;
emf = N * dphi / dt;

% Substitution of values
th = 0; % angle
L = 4e-2; % m
B = 0.75; % T
v = 3; % m/s
a0 = 8e-2; % m
af = 5e-2; % m
N = 1; % number of turns

% EMF
emf = subs(emf);

R0 = 200 * (2*L + 2*a0); % Ohms 
Rf = 200 * (2*L + 2*af); % Ohms

I0 = emf/R0;
If = emf/Rf; % anticlockwise 

fprintf('The current in the circuit when a = 8.0 cm is : %0.5f A \n', I0);
fprintf('The current in the circuit when a = 5.0 cm is : %0.5f A \n', If);