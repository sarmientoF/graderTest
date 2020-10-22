%% symbolic variables and constants
syms v th L N B R dt positive

dA = v * dt * cos(th) * L; % area differential 
dphi = B * dA;
N = 1;
emf = N * dphi / dt;

% Substitution of values
th = 0; % angle
R = 2; % Ohms
L = 4e-2; % m
B = 0.25; % T
v = 5; % m/s
N = 1; % number of turns

% EMF
emf = subs(emf);

I = emf / R; % Clockwise
F = I * L * B ;
P_Force = F * v;
P_Resistance = emf * I;

fprintf('The emf induced in the circuit is : %0.3f V \n', emf);
fprintf('The induced current is : %0.3f A \n', I);
fprintf('The magnitude of the force is : %0.2e N \n', F);
fprintf('The power output of the force is : %0.2e W \n', P_Force);
fprintf('The power dissipated due to the resistor is : %0.2e W \n', P_Resistance);