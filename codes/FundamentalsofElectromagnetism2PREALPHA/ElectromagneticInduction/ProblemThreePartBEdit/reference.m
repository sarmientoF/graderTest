%% symbolic variables and constants
syms B E R t

N = 200; % number of turns
A = 0.2 * 0.2; % m^2
V = 120; % emf_max = V 
w = 3600 * (2 * pi) / 60; % 3600 rev / min

emf_max = N * B * A * w;
B_sol  = solve(emf_max == V, B);
frequency = w / 2 / pi;

fprintf('The frequency of the output voltage is : %0.2f Hz \n', frequency);
fprintf('The strength of the magnetic field in which the coil is turning is : %0.3f T \n', B_sol);