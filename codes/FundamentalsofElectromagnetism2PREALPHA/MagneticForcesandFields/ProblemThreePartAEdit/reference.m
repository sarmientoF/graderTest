%% symbolic variables and constants
syms E B V v R q m positive

% Part A 
E_kinectic = m*v^2/2;
Work_Elec = q*V;
% Calculating the velocity right before encoutering the magnetic field
v = solve(E_kinectic ==  Work_Elec, v);

% Magnetic force
F_mag = q*v*B;
% Centripetal force 
F_cen = m*v^2/R;
R = solve(F_mag == F_cen, R);

fprintf('The radius of the circular orbit is : \n')
pretty(simplify(R));