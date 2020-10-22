%% symbolic variables and constants

P = 1000; % W
A = 0.3 * 0.4; % m^2
u0 = 4 * pi * 1e-7; % H/m
c = 3e+8; % m/s

I = P / A; 
Smax = I * 2;
E0 = sqrt(Smax * u0 * c);
B0 = E0 / c;

fprintf('The intensity of the microwaves are : %0.2e W/m^2 \n', I);
fprintf('The peak electric field strength of the microwave is : %0.2e V/m \n', E0);
fprintf('The peak magnetic field strength of the microwave is : %0.2e T \n', B0);