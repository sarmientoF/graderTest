%% symbolic variables and constants
syms rho ep0
syms r l R

% Vector that contains the charge density for 0<r<R, R<r<inf
dq = rho * r; %dr * dth * dz
q1 = int(dq, r, 0, r) * l * 2 * pi; % Charge for r<R
q2 = int(dq, r, 0, R) * l * 2 * pi; % Charge for r>R
Q = [q1, q2];
 
% Electric field for r < R
Ea = q1 / ep0 / (2*pi*r*l);
fprintf("The electric field for r<=R is :\n")
pretty(Ea)
 
% Electric field for r > R
Eb = q2 / ep0 / (2*pi*r*l);
fprintf("The electric field for r>=R is :\n")
pretty(Eb)