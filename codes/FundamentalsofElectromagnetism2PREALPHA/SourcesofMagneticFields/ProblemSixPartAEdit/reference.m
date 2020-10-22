%% symbolic variables and constants
syms I a u0 R x
syms dx 

% Part A
assume(x<R);
assume(a/2<R);

dI = I/a * dx;
dB = u0* dI / 2 / pi / (R-x); % x
B = int(dB/dx, x, -a, 0);
B = simplify(B);
B = subs(B, R, x);

fprintf('The magnetic field at the point P, which is in the plane of the sheet and at a distance x from one edge is : \n');
pretty(B)

B_a0 = limit(B, a, 0);
fprintf('The magnetic field as a approaches zero is : \n');
pretty(B_a0)
