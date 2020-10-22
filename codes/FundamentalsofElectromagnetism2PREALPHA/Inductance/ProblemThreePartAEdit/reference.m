%% symbolic variables and constants
syms a I R l r dr positive

B_in = I * r /  (2* pi * a^2);
B_out = I / (2 * pi *r);
dVol = 2 * pi * r * l *dr;
U = int(B_in^2/2 * dVol, r,0, a)/dr + int(B_out^2/2 * dVol, r,a, R)/dr;
L = simplify( 2 * U / I^2);
L_limit = limit(L, R, inf);

fprintf('The self-inductance per unit length of an infinite, straight, thin wire is : %s \n', L_limit);