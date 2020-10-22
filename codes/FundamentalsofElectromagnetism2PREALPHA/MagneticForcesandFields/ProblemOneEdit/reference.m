%% symbolic variables and constants
syms B v R q m

% Magnetic Force equation
F_mag = B* v* q;
% Centripetal force equation
F_cen = m*v^2/R;
% Find the magnetic field 
B_sol = solve(F_mag == F_cen, B);

m = 1.67e-27; % kg
q = 1.6e-19; % C
R = 2; % m
v = 5e+7; % m/s
B_final = simplify(subs(B_sol));

fprintf('The strength of the magnetic field is : %1.2f T \n',subs(B_final));