%% symbolic variables and constants
syms lambda

f = 2.45e+9; % Hz
d = 6e-2; % m

lambda = d * 2;
c = f * lambda;

fprintf('The speed of electromagnetic waves this implies is : %0.2e m/s \n', c);