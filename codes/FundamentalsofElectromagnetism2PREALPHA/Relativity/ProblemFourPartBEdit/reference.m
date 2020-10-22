%% symbolic variables and constants
syms v vp ve positive

V = 50e+6; % V
c = 3e+8; % m/s
eV = 1.6e-19; % C 
mp = 1.672e-27; % kg
me = 9.1e-31; % kg

KE = V * eV; 
gamma = sqrt(1/(1 - (v/c)^2));
yP = KE / (mp * c^2) + 1;
yE = KE / (me * c^2) + 1;
vp = solve(yP == gamma, v) /c;
ve = solve(yE == gamma, v) /c;

fprintf('The velocity of a proton accelerated by such a potential is : %0.5f c \n', vp);
fprintf('The velocity of an electron accelerated by such a potential is : %0.5f c \n', ve);