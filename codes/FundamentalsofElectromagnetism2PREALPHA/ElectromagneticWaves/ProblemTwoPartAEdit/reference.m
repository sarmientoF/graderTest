%% symbolic variables and constants
syms Emax Bmax positive

c = 3e+8; % m/s^2
u0 = 4 * pi * 1e-7; % H/m
Savg = 1.4e+3; % W/m^2
R = 1.5e+11; % m

Emax = Bmax * c;
Smax = 1/u0 * Emax * Bmax;
 
Bmax = vpa(solve(Smax == 2 * Savg, Bmax) ,4);
Emax = vpa(subs(Emax), 4);
P = 4 * pi * R^2 * Savg;

fprintf('The the maximum values of the electric and magnetic fields are : %0.3e V/m and %0.3e H/m \n', Emax, Bmax);
fprintf('The total power radiated by the sun is : %0.3e W \n', P);