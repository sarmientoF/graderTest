%% symbolic variables and constants
syms B E R t r dr positive
 
R = 20e-2; % m
B(t) = -1 + t/20;

% From Maxwell equations 
E_inside = r / 2 * diff(B,t);
E_outside = r^2 / (2*R) * diff(B,t);

fprintf('The electric field inside the region is : \n');
pretty(E_inside)
fprintf('The electric field outside the region is : \n');
pretty(E_outside)