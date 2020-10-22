%% symbolic variables and constants
syms V sigma_p

%% Upload the values of the variables
ep0 = 8.8541878176e-12;
k = 2.56; % polystyrene dielectric constant at room temeperatrue
di_streng = 19.7e6;
A = 12e-4; % m
d = 2e-3; % m

% The breakdown happens when the electric field is equal to the dielectric
% breakdown 
%C_parall = k * ep0 * A/d;
%C_parall = Q/V;
E_parall = V/d;
V = solve(E_parall == di_streng, V);
sigma_p = ep0 * di_streng* (k-1);

%
fprintf('The maximum permissible voltage across the capacitor to avoid dielectric breakdown is : %d Volts \n',V);
fprintf('The surface charge density on the surface of the dielectric : %f C/m^2 \n',sigma_p);
