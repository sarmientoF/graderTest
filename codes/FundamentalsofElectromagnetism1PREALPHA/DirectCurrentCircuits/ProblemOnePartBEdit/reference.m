%% symbolic variables and constants
syms k R C
k0 = 100e-6; % s
R = 1e4; % Ohms

k = R*C;
C = solve(k==k0, C);

fprintf ( 'The maximum capacitance of the circuit is : %1.0e Farads \n' , C);