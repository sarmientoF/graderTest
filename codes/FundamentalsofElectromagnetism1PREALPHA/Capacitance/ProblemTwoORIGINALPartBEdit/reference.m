%% symbolic variables and constants
syms ep0 a b d Vol
syms r E V Q

%% Equation of electric field for a parallel plate capacitor of dimensions a x b x d
C = ep0 * a* b/ d;
Energy = 1/2* C* V^2;
V = E * d;
Vol = a * b * d;
Energy_a = simplify(subs(Energy))
Energy_b = simplify(subs(Energy /(a*b*d) * Vol))