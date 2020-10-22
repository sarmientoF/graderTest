%% symbolic variables and constants
syms v th L N B R dt positive

dA = v * dt * cos(th) * L; % area differential 
dphi = B * dA;
N = 1;
emf = N * dphi / dt;

% Substitution of values
th = 0; % angle
R = 0.25; % Ohms
L = 25e-2; % m
B = 0.75; % T
v = 5; % m/s
N = 1; % number of turns

% EMF
emf = subs(emf);

I = emf / R; % Clockwise
F = I * L * B ;
P_Force = F * v;
P_Resistance = emf^2 / R;

fprintf('The emf induced in the circuit is : %0.3f V \n', emf);
fprintf('The magnitude of the force is : %0.2f N \n', F);
fprintf('The rate at which work is done by this force is : %0.2f W \n', P_Force);
fprintf('The power dissipated by the resistor is : %0.2f W \n', P_Resistance);