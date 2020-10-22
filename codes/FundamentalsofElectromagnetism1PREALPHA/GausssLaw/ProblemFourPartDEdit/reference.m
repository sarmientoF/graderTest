%% symbolic variables and constants
syms a1 a2 b1 b2 r
syms ep0
syms rho1 rho2

q1 = 0; % r<a1
q2 = q1 + int(rho1 * r^2 * 4 * pi, r, a1 ,r); % a1<r<b1
q3 = subs(q2, r, b1) + 0; % b1< r< a2
q4 = q3 + int(rho2 * r^2 * 4 * pi, r, a2, r); % a2<r<b2
q5 = subs(q4, r, b2) + 0; % b2<

q = [q1, q2, q3, q4, q5];
E = q ./ (4 * pi * r^2 * ep0);
E = simplify(E);

%% Electric field as a function of r
E_b2_inf    = simplify(E(5));
E_a2_b2     = simplify(E(4));
E_b1_a2     = simplify(E(3));
E_a1_b1     = simplify(E(2));
E_0_a1      = simplify(E(1));

fprintf("The electric field for r>b2 is :\n")
pretty(E_b2_inf)
fprintf("The electric field for a2<r<b2 is :\n")
pretty(E_a2_b2)
fprintf("The electric field for b1<r<a2 is :\n")
pretty(E_b1_a2)
fprintf("The electric field for a1<r<b1 is :\n")
pretty(E_a1_b1)
fprintf("The electric field for 0<r<a1 is :\n")
pretty(E_0_a1)