%% symbolic variables and constants
%% Part A
syms A I(t)
A = 3.31e-6; % m^2

I(t) = 5 * sin(2*pi*60*t);
J(t) = I/A;
J_final = subs(J(15e-3));

fprintf ( 'The current density at 15.00 ms is : %0.3e Amps/m^2 \n' , J_final);