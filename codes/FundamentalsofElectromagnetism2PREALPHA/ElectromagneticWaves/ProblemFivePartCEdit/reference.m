%% symbolic variables and constants
syms d r0 ep0 u0 positive
syms V(t) E(t) B(t) S(t)
syms th real
 
A = pi * r0^2;
C = ep0 * A / d;

% Part A
U = 1/2 * C * V^2;
dUdt = diff(U, t);

fprintf('The time rate of change of energy inside the capacitor is : \n');
pretty(dUdt);
 
% Part B 
Q = C * V;
Id = diff(Q, t);

E = V/d;
unitE = [0 0 1];

fprintf('The time dependence of E(t) is : \n');
pretty(E);
 
B = u0 * Id / (2*pi*r0);
unitB = [-sin(th) cos(th) 0];

fprintf('The time dependence of B(t) is : \n');
pretty(B);
 
S = 1/u0 * E * B;
unitS = cross(unitE, unitB);

fprintf('The time dependence of S(t) is : \n');
pretty(S);