%% symbolic variables and constants
syms r l ep0 

% Vector that contains the charge density for 0<r<R, R<r<inf
lambda = 3; % C/m
R = 3e-2; % m
 
q1 = 0; % Charge for r<R, Since is a conductor, the is no charge inside
q2 = lambda * l; % Charge for r>R
Q = [q1, q2];
 
% Electric field for r < R
Ea = q1 / ep0 / (2*pi*r*l);
fprintf("The electric field inside the cylinder is :\n")
pretty(Ea)
 
% Electric field for r > R
Eb = q2 / ep0 / (2*pi*r*l);
fprintf("The electric field outside the cylinder is :\n")
pretty(Eb)