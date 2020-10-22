%% symbolic variables and constants
%% Part E
syms alp R0 Rf T0 Tf Tf0 Tff
alp = 3.9e-3; % Ohms / Celsius
Tf0 = 68; % F
Tff = 100; % F

T0 = 5*(Tf0 - 32)/9;
Tf = 5*(Tff - 32)/9;
Rf = R0*(1 + (Tf - T0)* alp);
percent = (Rf/R0 - 1)*100;
percent_f = subs(percent);

fprintf ( 'The percentage rate that an aluminum wire’s resistance changes during the day is : %.2f percent \n' , percent_f);