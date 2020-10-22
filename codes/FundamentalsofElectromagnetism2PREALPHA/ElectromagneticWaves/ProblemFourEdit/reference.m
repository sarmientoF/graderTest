%% symbolic variables and constants
syms E B u0 
syms L r
syms R V I
 
V = R * I;
E = V / L;
 
B = u0 * I / (2*pi*r);
 
S = simplify(1/u0 * E * B);
A = 2 * pi * r * L;
 
P = S * A; 
%P = int(S*dA), since S is perpendicular to dA and is uniform

fprintf('The Ohmic heating of the wire is : %s \n', P);