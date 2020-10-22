%% symbolic variables and constants
%% Constants and variables 
syms th
m = .25e-3; %kg
l = .05; %m
q = 9.0e-10; % C
g = 9.81; % m/s^2
ep0 = 8.8541878176e-12; % vacuum permittivity
charge_density = 30e-6; %C/m^2

%% Solution
% Electric field from the plate
E = charge_density / (2 *ep0); 
 
% Electric force 
F_E = q * E; 
 
% Find th, Equations of static equilibrium
Eq = F_E == m *g *tand(th); 
th = solve(Eq, th);
 
% Print results 
fprintf('The angle that the string makes with the vertical is　: %0.2f°', th);