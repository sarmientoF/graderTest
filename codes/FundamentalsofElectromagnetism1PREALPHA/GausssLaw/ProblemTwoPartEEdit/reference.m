%% symbolic variables and constants
syms a b 
syms Q L 
syms r ep0

% Electric field for r < R
q1 = 0; % Charge for r<a
q2 = q1 + Q; % Charge for a<r<b
q3 = q2 - Q; % Charge for r>b
 
Ea = q1 / ep0 / (2*pi*r*L);
Eb = q2 / ep0 / (2*pi*r*L);
Ec = q3 / ep0 / (2*pi*r*L);
 
fprintf("The electric field for r<a is :\n")
pretty(Ea)

fprintf("The electric field for a<r<b is :\n")
pretty(Eb)

fprintf("The electric field for b<r is :\n")
pretty(Ec)