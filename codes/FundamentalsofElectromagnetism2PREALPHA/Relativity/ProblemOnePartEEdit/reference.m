%% symbolic variables and constants
syms c tau v

c = 3e+8; % m/s
Dt = 1.5e-8; % s
Dx = 800; % m

Dtt = (Dt - v * Dx / c^2) / sqrt(1 - (v/c)^2);
v = solve(Dtt == 0, v);
v = vpa(v/c);

fprintf('The speed the second observer must be moving relative to the first \n');
fprintf('in order to see the two events occur simultaneously is : %0.2e c \n',v);