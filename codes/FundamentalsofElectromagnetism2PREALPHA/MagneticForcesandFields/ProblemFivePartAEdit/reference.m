%% symbolic variables and constants
syms E B v R q m positive

% Magnetic force
F_mag = q*v*B;
% Centripetal force 
F_cen = m*v^2/R;
R = solve(F_mag == F_cen, R);

% Separation distance
m16 = 2.66e-26; % kg
m18 = m16 * 18/16; % kg 
R16 = subs(R, m, m16);
R18 = subs(R, m, m18);
v = 5e+6; % m/s
B = 1.2; % T
q = 1.6e-19; % C
Separation = subs(2*(R18 - R16));

fprintf('the separation distance between their paths when they hit is : %0.3f m \n', Separation);