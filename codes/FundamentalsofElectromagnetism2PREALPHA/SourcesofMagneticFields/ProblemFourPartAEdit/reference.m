%% symbolic variables and constants
syms a b I u0

% For the half-circular wires 
B1 = u0*I/4/a;
B2 = -u0*I/4/b;
B = simplify(B1 + B2);

fprintf('The magnetic field at point P is : \n')
pretty(B)