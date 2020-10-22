%% symbolic variables and constants
syms alp R0 Rf T0 Tf
alp = 0.004041;
T0 = 20;

Rf = R0*(1 + (Tf - T0)* alp);
Tf = solve(Rf == 2*R0, Tf);

T_2R = subs(Tf);

fprintf ( 'The temperature of the copper wire is : %.2f degrees Celsius \n' , T_2R);