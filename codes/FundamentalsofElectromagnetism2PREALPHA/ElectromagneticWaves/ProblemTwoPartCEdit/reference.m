%% symbolic variables and constants

c = 3e+8; % m/s
Savg = 1.37e+3; % W/m^2
R_Eart = 6.371e+6; % m
F_gravity = 3.54e+22; % N

Pressure = Savg / c ;
A = pi * R_Eart^2;
F_light = Pressure * A;
Ratio = F_gravity/F_light;

fprintf('The magnitude of the total force that the Sun’s radiation exerts on Earth is : %0.2e N \n', F_light);
fprintf('The comparison to the force of gravity between the Sun and Earth is : %0.3e \n', Ratio);