%% symbolic variables and constants

m = 0.4; % kg
T = 45; % C
t = 120; % s
c = 3e+8; % m/s
u0 = 4 * pi * 1e-7; % H/m
cEsp = 3.76e+3; %J /kg C

E_abs = m * T * cEsp / t;
A = 0.2^2 * pi / 4;
I_abs = E_abs / A;
S_peak = I_abs * 2; 
E_peak = sqrt(S_peak * u0 * c);
B_peak = E_peak / c;

fprintf('The rate of energy absorption by the spaghetti is : %0.2f W \n', E_abs);
fprintf('The average intensity of the microwaves are : %0.2e W/m^2 \n', I_abs);
fprintf('The peak electric field strength of the microwave is : %0.2e V/m \n', E_peak);
fprintf('The peak magnetic field strength of the microwave is : %0.2e T \n', B_peak);