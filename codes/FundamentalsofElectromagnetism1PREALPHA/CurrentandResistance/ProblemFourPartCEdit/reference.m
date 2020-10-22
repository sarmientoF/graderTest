%% symbolic variables and constants
%% Part C
syms alp R0 Rf T0 Tf
alp = -5*1e-4;
T0 = 20; % C

Rf = R0*(1 + (Tf - T0)* alp);
Tf = solve(Rf == R0*0.9, Tf);
DeltaT = subs(Tf)-T0;

fprintf ( 'The required change in temperature is : %d degrees Celsius \n' , DeltaT);