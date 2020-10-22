%% symbolic variables and constants
%% Part F
syms l A l0 A0 lf Af rho 
R0 = 5; % Ohms

R(A,l) = rho * l/(A);
lf = l0 *2;
Af = A0/2;
ratio = R(Af, lf)/R(A0,l0);
Rf = R0 * ratio;
R_final = subs(Rf);

fprintf ( 'The resistance of the longer wire is : %.1f Ohms \n' , R_final );