%% symbolic variables and constants
syms I0 w t R a b n u0

A = pi * a^2; % area
N = 2; % number of turns

I(t) = I0 * sin(w*t);

B_ins = I * u0 * n; % from Ampere's law
B_out = 0;
magFlux = B_ins * A;

emf = N * diff(magFlux, t);
I_ind = emf / R;
I = I_ind(0);

fprintf('The magnitude and direction of current induced in the outer loops at time t = 0 is : \n');
pretty(I)