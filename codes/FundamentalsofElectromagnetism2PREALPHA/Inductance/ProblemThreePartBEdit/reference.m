%% symbolic variables and constants
syms a I R u0 d l r dr positive

B1 = I * u0 / (2 * pi *r);
B2 = - I * u0 / (2 * pi *(r - d));
B = B1 + B2;
dA = dr * l;
phi = int(B * dA, r, a, d-a) / dr; 
L = simplify(phi / I); 

fprintf('The self-inductance of a length l of such a pair of wires is : \n');
pretty(L);