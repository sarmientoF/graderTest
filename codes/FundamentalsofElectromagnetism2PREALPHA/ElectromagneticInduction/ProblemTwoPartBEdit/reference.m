%% symbolic variables and constants
syms B E R t r dr positive
 
B(t) = -1 + t/30;

% From Maxwell equations 
E_inside = r / 2 * diff(B,t);
E_outside = r^2 / (2*R) * diff(B,t);

fprintf('The electric field inside the region is : \n');
pretty(E_inside)
fprintf('The electric field outside the region is : \n');
pretty(E_outside)

% Substitution of values
R = 10e-2; % m
r = 5e-2; % m
q = 1.6e-19; % V
v = 5e+6; % m/s
B_now = 0.5; % T

W_inside = E_inside * 2 * pi * r;
W_inside = vpa(subs(W_inside));

E_inside_R = R / 2 * diff(B,t);
t = solve(B(t)==B_now, t);
E_now = subs(E_inside_R);
F_ele = E_now * q;
F_mag = q * v * B(t);
F_ele = vpa(F_ele);
F_mag = vpa(F_mag);

r = R;
W_outside = E_outside * 2 * pi * r;
W_outside = vpa(subs(W_outside));

fprintf('The work done by the electric field is : %0.3e W \n', W_inside);
fprintf('The work done by the electric field for any radius r >= R is : %0.3e W \n', W_outside);
fprintf('The electric force on the proton at that instant is : %0.3e N \n', F_ele);
fprintf('The magnetic force on the proton at that instant is : %0.3e N \n', F_mag);