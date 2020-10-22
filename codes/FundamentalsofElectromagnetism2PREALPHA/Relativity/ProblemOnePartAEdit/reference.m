%% symbolic variables and constants
syms c tau v

c = 3e+8; % m/s
v = c/2; % m/s

dt = tau * sqrt((1 - (v/c)^2));

fprintf('The time duration between on and off as seen by an observer in A is : %s s \n', dt);