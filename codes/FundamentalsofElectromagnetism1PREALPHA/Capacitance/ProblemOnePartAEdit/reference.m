%% symbolic variables and constants
syms ep0 R q positive
syms r E V C Q

R = 6400000; % m
ep0 = 8.854e-12; % F/m

%% Equation of electric field for a sphere 
E = q /ep0 / (4*pi*r^2);

% Calculate the electric potential, considering V_inf = 0
V_inf = 0;
V = V_inf + int(E,r,[R inf]);

% Capacitance ( C = q/V)
C = q /V;
C_E = vpa(C);
fprintf('Capacitance of the Earth is : %e Farads \n', C_E);