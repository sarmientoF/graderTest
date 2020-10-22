%% symbolic variables and constants
%% Part B
syms l A l0 A0 lf Af rho

R(A,l) = rho * l/(A);
lf = l0*4;
Af = A0/4;
ratio = R(Af, lf)/R(A0,l0);

fprintf ( 'The resistance increases by a factor of : %.2f \n' , ratio);