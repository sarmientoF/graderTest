%% symbolic variables and constants
syms E B v q positive

v = 4e+6; % m/s
B = 0.1; % T
d = 1e-2; % m

F_mag = q * v * B;
F_ele = q * E;
E_Sol = subs(solve(F_mag == F_ele, E));
Voltage = E_Sol * d;

fprintf('The electric field strength needed to select a speed of 4.0 x 10^6 m/s is : %.2e V/m \n', E_Sol)
fprintf('The voltage between the plates if they are separated by 1.00 cm is : %.2e V \n', Voltage)