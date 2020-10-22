%% symbolic variables and constants
syms R q w r th u0 z
syms dr dth positive

assume(z>0)
sigma = q /(pi*R^2);
dq = 2 * pi * r *dr * sigma;
T = 2 * pi /w;
dI = dq / T;

% By using BS law, The ds is always perpendicular to the unit vector
r_vec = [-sin(th)*r -cos(th)*r z];
dS = [-cos(th) sin(th) 0]*dth * r;

dB = simplify(u0/(4*pi) * dI * cross(dS, r_vec)/(r^2+z^2)^(3/2));
dB_th = int(dB/dth, th, [0 2*pi]);
B = int(dB_th/dr,r, [0 R]);
B = simplify(B);

fprintf('The magnetic field at the center of the disc, a distance z above, is : \n');
pretty(B)