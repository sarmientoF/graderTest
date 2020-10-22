%% symbolic variables and constants
syms B E R t

% Part a
N = 50; % number of turns
A = 0.15 * 0.40; % m^2
B = 0.75; % T
R = 1000; % Ohms 
w = 3600 * (2 * pi) / 60; % 3600 rev / min

emf = subs(N * B * A * w * sin(w*t));
P_1000 = subs(emf^2 / R);

% Part b
R = 2000; % Ohms
P_2000 = subs(emf^2 / R);

fprintf('The emf induced in the coil as a function of time is : %s V \n', emf);
fprintf('The power as a function of time required to keep the coil turning (R = 1000 Ohms) is : %s W \n', P_1000);
fprintf('The power as a function of time required to keep the coil turning (R = 2000 Ohms) is : %s W \n', P_2000);