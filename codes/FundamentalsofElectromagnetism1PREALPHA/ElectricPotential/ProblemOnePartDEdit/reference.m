%% symbolic variables and constants
syms a b 
syms Q L 
syms r ep0

% Electric field for r < R
q1 = 0; % Charge for r<a
q2 = q1 + Q; % Charge for a<r<b
q3 = q2 - Q; % Charge for r>b
 
% E1 = q1 / ep0 / (2*pi*r*L);
E2 = q2 / ep0 / (2*pi*r*L);
% E3 = q3 / ep0 / (2*pi*r*L);
 
V(r) = int(E2, r);
V_ab = V(b) - V(a);
V_ab = simplify(V_ab);
 
fprintf("The potential difference between the two conductors is :\n")
pretty(V_ab)