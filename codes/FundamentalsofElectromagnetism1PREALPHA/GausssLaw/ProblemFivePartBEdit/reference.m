%% symbolic variables and constants
syms R R2 z h x
syms ep0 sig k 
syms r dr q dq th dth
assume(h>0)
spi = sym(pi);

%%Relation between r and t
dq = sig * r * dr * dth;
k = 1/ 4 /spi /ep0;
dE = k * dq / norm([r h])^3 * [r*cos(th) r*sin(th) h];
%%
E_th = int(dE/dth, th, [0 2*pi]);
E_r = int(E_th/dr, r, [0 r]);
% pretty(E_r)%% Electric field from a circular plate of radius R at a height z
%% We can consider the big rectangular plate as a big circular plate R2 >> h
% Electric field for a small circular plate of radius R
E_R = subs(E_r, r, R);
% Also we know that h << R,
% Electric field form a big circular plate of radius R2
E_R2 = subs(E_r , r, R2);
%% By using the concept of superpossition we can find the wanted electric field
E_hole = simplify(E_R2 - E_R, "Steps", 25);
% R2 = h / x; %% Lim x = 0
E_hole = limit(subs(E_hole, R2, h/x), x, 0);

fprintf("The electric field at a height h is :\n")
pretty(E_hole)